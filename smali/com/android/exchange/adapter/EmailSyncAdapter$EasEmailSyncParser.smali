.class public Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "EmailSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/EmailSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EasEmailSyncParser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;
    }
.end annotation


# static fields
.field private static final WHERE_SERVER_ID_AND_MAILBOX_KEY:Ljava/lang/String; = "syncServerId=? and mailboxKey=?"


# instance fields
.field changedEmails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;",
            ">;"
        }
    .end annotation
.end field

.field deletedEmails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMailboxIdAsString:Ljava/lang/String;

.field newEmails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/provider/EmailContent$Message;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/EmailSyncAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/EmailSyncAdapter;)V
    .locals 2
    .parameter
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    .line 169
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->newEmails:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->deletedEmails:Ljava/util/ArrayList;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->changedEmails:Ljava/util/ArrayList;

    .line 170
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailboxIdAsString:Ljava/lang/String;

    .line 171
    return-void
.end method

.method private addParser(Ljava/util/ArrayList;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/provider/EmailContent$Message;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, emails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/provider/EmailContent$Message;>;"
    const/4 v4, 0x0

    .line 452
    new-instance v7, Lcom/android/email/provider/EmailContent$Message;

    invoke-direct {v7}, Lcom/android/email/provider/EmailContent$Message;-><init>()V

    .line 453
    .local v7, msg:Lcom/android/email/provider/EmailContent$Message;
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    iput-wide v0, v7, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    .line 454
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    iput-wide v0, v7, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    .line 455
    const/4 v0, 0x1

    iput v0, v7, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    .line 460
    const/4 v0, 0x0

    iput-byte v0, v7, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    .line 463
    :goto_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 464
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    sparse-switch v0, :sswitch_data_0

    .line 477
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 466
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    goto :goto_0

    .line 469
    :sswitch_1
    invoke-virtual {p0, v7}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->addData(Lcom/android/email/provider/EmailContent$Message;)V

    goto :goto_0

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$000()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncServerId=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v7, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\' AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "accountKey"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v8, v7, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 485
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 486
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->incrementChangeCount()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 492
    return-void

    .line 490
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 464
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x1d -> :sswitch_1
    .end sparse-switch
.end method

.method private attachmentParser(Ljava/util/ArrayList;Lcom/android/email/provider/EmailContent$Message;)V
    .locals 7
    .parameter
    .parameter "msg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/provider/EmailContent$Attachment;",
            ">;",
            "Lcom/android/email/provider/EmailContent$Message;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 694
    .local p1, atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/provider/EmailContent$Attachment;>;"
    const/4 v2, 0x0

    .line 695
    .local v2, fileName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 696
    .local v3, length:Ljava/lang/String;
    const/4 v4, 0x0

    .line 698
    .local v4, location:Ljava/lang/String;
    const/4 v1, 0x0

    .line 700
    .local v1, contentId:Ljava/lang/String;
    :goto_0
    const/16 v5, 0x85

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 701
    iget v5, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    sparse-switch v5, :sswitch_data_0

    .line 721
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 705
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 706
    goto :goto_0

    .line 709
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 710
    goto :goto_0

    .line 713
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 714
    goto :goto_0

    .line 717
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 718
    goto :goto_0

    .line 725
    :cond_0
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    .line 726
    new-instance v0, Lcom/android/email/provider/EmailContent$Attachment;

    invoke-direct {v0}, Lcom/android/email/provider/EmailContent$Attachment;-><init>()V

    .line 727
    .local v0, att:Lcom/android/email/provider/EmailContent$Attachment;
    const-string v5, "base64"

    iput-object v5, v0, Lcom/android/email/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    .line 728
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    .line 729
    iput-object v2, v0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 730
    iput-object v4, v0, Lcom/android/email/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    .line 731
    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getMimeTypeFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 733
    if-eqz v1, :cond_1

    .line 734
    iput-object v1, v0, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 735
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EmailSyncAdapter || add content id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->log(Ljava/lang/String;)V

    .line 737
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    const/4 v5, 0x1

    iput-boolean v5, p2, Lcom/android/email/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 740
    .end local v0           #att:Lcom/android/email/provider/EmailContent$Attachment;
    :cond_2
    return-void

    .line 701
    :sswitch_data_0
    .sparse-switch
        0x87 -> :sswitch_1
        0x88 -> :sswitch_2
        0x90 -> :sswitch_0
        0x44c -> :sswitch_2
        0x450 -> :sswitch_0
        0x451 -> :sswitch_1
        0x453 -> :sswitch_3
    .end sparse-switch
.end method

.method private attachmentsParser(Ljava/util/ArrayList;Lcom/android/email/provider/EmailContent$Message;)V
    .locals 2
    .parameter
    .parameter "msg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/provider/EmailContent$Attachment;",
            ">;",
            "Lcom/android/email/provider/EmailContent$Message;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 681
    .local p1, atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/provider/EmailContent$Attachment;>;"
    :goto_0
    const/16 v0, 0x86

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 682
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    sparse-switch v0, :sswitch_data_0

    .line 688
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 685
    :sswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->attachmentParser(Ljava/util/ArrayList;Lcom/android/email/provider/EmailContent$Message;)V

    goto :goto_0

    .line 691
    :cond_0
    return-void

    .line 682
    nop

    :sswitch_data_0
    .sparse-switch
        0x85 -> :sswitch_0
        0x44f -> :sswitch_0
    .end sparse-switch
.end method

.method private bodyParser(Lcom/android/email/provider/EmailContent$Message;)V
    .locals 11
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const-string v10, "2"

    const-string v8, "BASE_TRUNCATED2"

    const-string v6, "EmailSyncAdapter"

    .line 565
    const-string v1, "1"

    .line 566
    .local v1, bodyType:Ljava/lang/String;
    const-string v0, ""

    .line 567
    .local v0, body:Ljava/lang/String;
    :goto_0
    const/16 v4, 0x8c

    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    .line 568
    iget v4, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    sparse-switch v4, :sswitch_data_0

    .line 609
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 570
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 571
    goto :goto_0

    .line 574
    :sswitch_1
    const-string v4, "2"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-boolean v4, v4, Lcom/android/exchange/EasSyncService;->mIsHTMLDisabled:Z

    if-eqz v4, :cond_0

    .line 576
    const-string v4, "EasEmailSyncParser"

    const-string v5, "IT Policy: AllowHtml = false. Skipping body"

    invoke-static {v4, v5}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const-string v0, "HTML Body rejected by Exchange IT Policy"

    .line 578
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 582
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 583
    goto :goto_0

    .line 587
    :sswitch_2
    const-string v4, "EmailSyncAdapter"

    const-string v4, "BASE_TRUNCATED1"

    invoke-static {v6, v4}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 594
    .local v2, trunc:Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 595
    iput-byte v7, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    .line 596
    const-string v4, "EmailSyncAdapter"

    const-string v4, "BASE_TRUNCATED2"

    invoke-static {v6, v8}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 597
    :cond_1
    const-string v4, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 598
    iput-byte v9, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    .line 599
    const-string v4, "EmailSyncAdapter"

    const-string v4, "BASE_TRUNCATED2"

    invoke-static {v6, v8}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 602
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 603
    .local v3, truncated:I
    if-ne v3, v7, :cond_3

    move v4, v7

    :goto_1
    iput-byte v4, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    .line 604
    const-string v4, "EmailSyncAdapter"

    const-string v4, "BASE_TRUNCATED2"

    invoke-static {v6, v8}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v4, v9

    .line 603
    goto :goto_1

    .line 613
    .end local v2           #trunc:Ljava/lang/String;
    .end local v3           #truncated:I
    :cond_4
    const-string v4, "2"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 614
    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 620
    :goto_2
    if-nez v0, :cond_5

    .line 621
    const-string v4, "EmailSyncAdapter"

    const-string v4, "email body is null"

    invoke-static {v6, v4}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_5
    return-void

    .line 616
    :cond_6
    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    goto :goto_2

    .line 568
    :sswitch_data_0
    .sparse-switch
        0x446 -> :sswitch_0
        0x44b -> :sswitch_1
        0x44d -> :sswitch_2
    .end sparse-switch
.end method

.method private bodyParser2(Lcom/android/email/provider/EmailContent$Message;)V
    .locals 10
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const-string v8, "BASE_TRUNCATED2"

    const-string v6, "EmailSyncAdapter"

    .line 627
    const-string v1, "1"

    .line 628
    .local v1, bodyType:Ljava/lang/String;
    const-string v0, ""

    .line 629
    .local v0, body:Ljava/lang/String;
    :goto_0
    const/16 v4, 0x8c

    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    .line 630
    iget v4, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    sparse-switch v4, :sswitch_data_0

    .line 663
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 632
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 633
    goto :goto_0

    .line 635
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 636
    goto :goto_0

    .line 640
    :sswitch_2
    const-string v4, "EmailSyncAdapter"

    const-string v4, "BASE_TRUNCATED1: "

    invoke-static {v6, v4}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 648
    .local v2, trunc:Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 649
    iput-byte v7, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    .line 650
    const-string v4, "EmailSyncAdapter"

    const-string v4, "BASE_TRUNCATED2"

    invoke-static {v6, v8}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 651
    :cond_0
    const-string v4, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 652
    iput-byte v9, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    .line 653
    const-string v4, "EmailSyncAdapter"

    const-string v4, "BASE_TRUNCATED2"

    invoke-static {v6, v8}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 656
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 657
    .local v3, truncated:I
    if-ne v3, v7, :cond_2

    move v4, v7

    :goto_1
    iput-byte v4, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    .line 658
    const-string v4, "EmailSyncAdapter"

    const-string v4, "BASE_TRUNCATED2"

    invoke-static {v6, v8}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v4, v9

    .line 657
    goto :goto_1

    .line 667
    .end local v2           #trunc:Ljava/lang/String;
    .end local v3           #truncated:I
    :cond_3
    const-string v4, "2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 668
    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 674
    :goto_2
    if-nez v0, :cond_4

    .line 675
    const-string v4, "EmailSyncAdapter"

    const-string v4, "email body is null"

    invoke-static {v6, v4}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_4
    return-void

    .line 670
    :cond_5
    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    goto :goto_2

    .line 630
    nop

    :sswitch_data_0
    .sparse-switch
        0x446 -> :sswitch_0
        0x44b -> :sswitch_1
        0x44d -> :sswitch_2
    .end sparse-switch
.end method

.method private changeApplicationDataParser(Ljava/util/ArrayList;Ljava/lang/Boolean;Ljava/lang/Boolean;J)V
    .locals 7
    .parameter
    .parameter "oldRead"
    .parameter "oldFlag"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, changes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;>;"
    const/4 v2, 0x1

    .line 856
    const/4 v4, 0x0

    .line 857
    .local v4, read:Ljava/lang/Boolean;
    const/4 v5, 0x0

    .line 858
    .local v5, flag:Ljava/lang/Boolean;
    const/4 v6, 0x0

    .line 859
    .local v6, flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    :goto_0
    const/16 v0, 0x1d

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 860
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    sparse-switch v0, :sswitch_data_0

    .line 870
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 862
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 863
    goto :goto_0

    .line 862
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 865
    :sswitch_1
    new-instance v6, Lcom/android/email/provider/EmailContent$FollowupFlag;

    .end local v6           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    invoke-direct {v6}, Lcom/android/email/provider/EmailContent$FollowupFlag;-><init>()V

    .line 866
    .restart local v6       #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    invoke-direct {p0, v6}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->flagParser(Lcom/android/email/provider/EmailContent$FollowupFlag;)Ljava/lang/Boolean;

    move-result-object v5

    .line 867
    iput-wide p4, v6, Lcom/android/email/provider/EmailContent$FollowupFlag;->MsgId:J

    goto :goto_0

    .line 873
    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {p2, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-eqz v6, :cond_4

    .line 875
    :cond_3
    new-instance v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;

    move-object v1, p0

    move-wide v2, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;-><init>(Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;JLjava/lang/Boolean;Ljava/lang/Boolean;Lcom/android/email/provider/EmailContent$FollowupFlag;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    :cond_4
    return-void

    .line 860
    nop

    :sswitch_data_0
    .sparse-switch
        0x95 -> :sswitch_0
        0xba -> :sswitch_1
    .end sparse-switch
.end method

.method private fetchDataParser(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Body;)V
    .locals 20
    .parameter "msg"
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 976
    :cond_0
    :goto_0
    const/16 v17, 0x1d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_12

    .line 977
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    move/from16 v17, v0

    sparse-switch v17, :sswitch_data_0

    .line 1095
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 980
    :sswitch_0
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput-byte v0, v1, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    .line 981
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    goto :goto_0

    .line 995
    :sswitch_1
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput-byte v0, v1, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    .line 996
    const-string v17, "EmailSyncAdapter2"

    const-string v18, "EasEmailSyncParser result  "

    invoke-static/range {v17 .. v18}, Lcom/android/exchange/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    const-string v6, "tempFile"

    .line 998
    .local v6, file:Ljava/lang/String;
    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag(ZLandroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    .line 1001
    .local v11, mimeDataOs:Z
    new-instance v8, Ljava/io/FileInputStream;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/tempFile"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1004
    .local v8, is:Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 1006
    .local v12, mimeMsg:Lcom/android/email/mail/internet/MimeMessage;
    :try_start_0
    new-instance v13, Lcom/android/email/mail/internet/MimeMessage;

    invoke-direct {v13, v8}, Lcom/android/email/mail/internet/MimeMessage;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v12           #mimeMsg:Lcom/android/email/mail/internet/MimeMessage;
    .local v13, mimeMsg:Lcom/android/email/mail/internet/MimeMessage;
    move-object v12, v13

    .line 1012
    .end local v13           #mimeMsg:Lcom/android/email/mail/internet/MimeMessage;
    .restart local v12       #mimeMsg:Lcom/android/email/mail/internet/MimeMessage;
    :goto_1
    :try_start_1
    invoke-virtual {v12}, Lcom/android/email/mail/internet/MimeMessage;->getBody()Lcom/android/email/mail/Body;

    move-result-object v14

    .line 1013
    .local v14, tempBody2:Lcom/android/email/mail/Body;
    new-instance v10, Lcom/android/email/mail/internet/MimeBodyPart;

    invoke-virtual {v12}, Lcom/android/email/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v17

    move-object v0, v10

    move-object v1, v14

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/internet/MimeBodyPart;-><init>(Lcom/android/email/mail/Body;Ljava/lang/String;)V

    .line 1015
    .local v10, mimeBody:Lcom/android/email/mail/internet/MimeBodyPart;
    const/4 v9, 0x0

    .line 1016
    .local v9, mimBodyStringTest:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/android/email/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "text/html"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1017
    const-string v17, "EmailSyncAdapter.....2"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "1. mimeMsg.getContentType() "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Lcom/android/email/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/exchange/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1019
    .local v16, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1020
    .local v4, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    move-object v0, v10

    move-object/from16 v1, v16

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/internet/MimeUtility;->collectParts(Lcom/android/email/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1021
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/email/mail/Part;

    .line 1022
    .local v15, viewable:Lcom/android/email/mail/Part;
    const-string v17, "EMAILSYNCADAPTER"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "text/html: VIEWABLE = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v15}, Lcom/android/email/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/exchange/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    invoke-static {v15}, Lcom/android/email/mail/internet/MimeUtility;->getTextFromPart(Lcom/android/email/mail/Part;)Ljava/lang/String;

    move-result-object v9

    .line 1024
    invoke-interface {v15}, Lcom/android/email/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "text/html"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1025
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1026
    :cond_2
    move-object v0, v9

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1088
    .end local v4           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #mimBodyStringTest:Ljava/lang/String;
    .end local v10           #mimeBody:Lcom/android/email/mail/internet/MimeBodyPart;
    .end local v14           #tempBody2:Lcom/android/email/mail/Body;
    .end local v15           #viewable:Lcom/android/email/mail/Part;
    .end local v16           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    :catch_0
    move-exception v17

    move-object/from16 v5, v17

    .line 1090
    .local v5, e:Lcom/android/email/mail/MessagingException;
    invoke-virtual {v5}, Lcom/android/email/mail/MessagingException;->printStackTrace()V

    goto/16 :goto_0

    .line 1007
    .end local v5           #e:Lcom/android/email/mail/MessagingException;
    :catch_1
    move-exception v17

    move-object/from16 v5, v17

    .line 1009
    .restart local v5       #e:Lcom/android/email/mail/MessagingException;
    invoke-virtual {v5}, Lcom/android/email/mail/MessagingException;->printStackTrace()V

    goto/16 :goto_1

    .line 1029
    .end local v5           #e:Lcom/android/email/mail/MessagingException;
    .restart local v4       #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v9       #mimBodyStringTest:Ljava/lang/String;
    .restart local v10       #mimeBody:Lcom/android/email/mail/internet/MimeBodyPart;
    .restart local v14       #tempBody2:Lcom/android/email/mail/Body;
    .restart local v15       #viewable:Lcom/android/email/mail/Part;
    .restart local v16       #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    :cond_3
    :try_start_2
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1030
    :cond_4
    move-object v0, v9

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    goto :goto_2

    .line 1035
    .end local v4           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v15           #viewable:Lcom/android/email/mail/Part;
    .end local v16           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    :cond_5
    invoke-virtual {v12}, Lcom/android/email/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "multipart/alternative"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_6

    invoke-virtual {v12}, Lcom/android/email/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "multipart/mixed"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_6

    invoke-virtual {v12}, Lcom/android/email/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "multipart/report"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 1036
    :cond_6
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1037
    .restart local v16       #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1038
    .restart local v4       #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    move-object v0, v10

    move-object/from16 v1, v16

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/internet/MimeUtility;->collectParts(Lcom/android/email/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1040
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/email/mail/Part;

    .line 1042
    .restart local v15       #viewable:Lcom/android/email/mail/Part;
    invoke-static {v15}, Lcom/android/email/mail/internet/MimeUtility;->getTextFromPart(Lcom/android/email/mail/Part;)Ljava/lang/String;

    move-result-object v9

    .line 1043
    invoke-interface {v15}, Lcom/android/email/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "text/html"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 1044
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1045
    :cond_8
    move-object v0, v9

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    goto :goto_3

    .line 1046
    :cond_9
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1047
    :cond_a
    move-object v0, v9

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    goto :goto_3

    .line 1051
    .end local v4           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v15           #viewable:Lcom/android/email/mail/Part;
    .end local v16           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    :cond_b
    invoke-virtual {v12}, Lcom/android/email/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "multipart/related"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 1053
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1054
    .restart local v16       #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1055
    .restart local v4       #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    move-object v0, v10

    move-object/from16 v1, v16

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/internet/MimeUtility;->collectParts(Lcom/android/email/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1056
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/email/mail/Part;

    .line 1057
    .restart local v15       #viewable:Lcom/android/email/mail/Part;
    const-string v17, "EMAILSYNCADAPTER2"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "multipart/related: VIEWABLE = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v15}, Lcom/android/email/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/exchange/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    invoke-static {v15}, Lcom/android/email/mail/internet/MimeUtility;->getTextFromPart(Lcom/android/email/mail/Part;)Ljava/lang/String;

    move-result-object v9

    .line 1061
    invoke-interface {v15}, Lcom/android/email/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "text/html"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 1064
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_d

    .line 1065
    move-object v0, v9

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    .line 1079
    :cond_c
    :goto_5
    const-string v17, "EMAILSYNCADAPTER2"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "multipart/related: VIEWABLE to textfrompart = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/exchange/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1067
    :cond_d
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_5

    .line 1071
    :cond_e
    invoke-interface {v15}, Lcom/android/email/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v17

    const-string v18, "text/plain"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 1073
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_f

    .line 1074
    move-object v0, v9

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    goto :goto_5

    .line 1076
    :cond_f
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_5

    .line 1083
    .end local v4           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v15           #viewable:Lcom/android/email/mail/Part;
    .end local v16           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    :cond_10
    const-string v17, "EmailSyncAdapter.....2"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "2. mimeMsg.getContentType() "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Lcom/android/email/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/exchange/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    invoke-static {v10}, Lcom/android/email/mail/internet/MimeUtility;->getTextFromPart(Lcom/android/email/mail/Part;)Ljava/lang/String;

    move-result-object v9

    .line 1085
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_11

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1086
    :cond_11
    move-object v0, v9

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;
    :try_end_2
    .catch Lcom/android/email/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1099
    .end local v6           #file:Ljava/lang/String;
    .end local v8           #is:Ljava/io/InputStream;
    .end local v9           #mimBodyStringTest:Ljava/lang/String;
    .end local v10           #mimeBody:Lcom/android/email/mail/internet/MimeBodyPart;
    .end local v11           #mimeDataOs:Z
    .end local v12           #mimeMsg:Lcom/android/email/mail/internet/MimeMessage;
    .end local v14           #tempBody2:Lcom/android/email/mail/Body;
    :cond_12
    return-void

    .line 977
    :sswitch_data_0
    .sparse-switch
        0x8c -> :sswitch_0
        0xb6 -> :sswitch_1
    .end sparse-switch
.end method

.method private flagParser(Lcom/android/email/provider/EmailContent$FollowupFlag;)Ljava/lang/Boolean;
    .locals 6
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 497
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 499
    .local v0, state:Ljava/lang/Boolean;
    :goto_0
    const/16 v2, 0xba

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    .line 500
    iget v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    sparse-switch v2, :sswitch_data_0

    .line 558
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 503
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v1

    .line 504
    .local v1, status:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 505
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 506
    sget-object v2, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_ACTIVE:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v2, p1, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    goto :goto_0

    .line 507
    :cond_0
    if-ne v1, v4, :cond_1

    .line 508
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 509
    sget-object v2, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_COMPLETE:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v2, p1, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    goto :goto_0

    .line 511
    :cond_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 512
    sget-object v2, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_CLEARED:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    iput-object v2, p1, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    goto :goto_0

    .line 516
    .end local v1           #status:I
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/email/provider/EmailContent$FollowupFlag;->FlagType:Ljava/lang/String;

    goto :goto_0

    .line 519
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->text:Ljava/lang/String;

    .line 520
    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/email/provider/EmailContent$FollowupFlag;->CompleteTime:J

    goto :goto_0

    .line 523
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->text:Ljava/lang/String;

    .line 524
    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/email/provider/EmailContent$FollowupFlag;->DateCompleted:J

    goto :goto_0

    .line 527
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->text:Ljava/lang/String;

    .line 528
    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/email/provider/EmailContent$FollowupFlag;->StartDate:J

    goto :goto_0

    .line 531
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->text:Ljava/lang/String;

    .line 532
    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/email/provider/EmailContent$FollowupFlag;->DueDate:J

    goto :goto_0

    .line 535
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->text:Ljava/lang/String;

    .line 536
    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCDueDate:J

    goto/16 :goto_0

    .line 539
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->text:Ljava/lang/String;

    .line 540
    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/email/provider/EmailContent$FollowupFlag;->UTCStartDate:J

    goto/16 :goto_0

    .line 543
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v2

    if-ne v2, v4, :cond_2

    move v2, v4

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p1, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderSet:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_2
    move v2, v5

    goto :goto_1

    .line 546
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->text:Ljava/lang/String;

    .line 547
    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/email/provider/EmailContent$FollowupFlag;->ReminderTime:J

    goto/16 :goto_0

    .line 550
    :sswitch_a
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->text:Ljava/lang/String;

    .line 551
    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->text:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/email/provider/EmailContent$FollowupFlag;->OrdinalDate:J

    goto/16 :goto_0

    .line 554
    :sswitch_b
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/email/provider/EmailContent$FollowupFlag;->SubOrdinalDate:Ljava/lang/String;

    goto/16 :goto_0

    .line 561
    :cond_3
    return-object v0

    .line 500
    nop

    :sswitch_data_0
    .sparse-switch
        0xbb -> :sswitch_0
        0xbd -> :sswitch_1
        0xbe -> :sswitch_2
        0x24b -> :sswitch_3
        0x24c -> :sswitch_5
        0x24d -> :sswitch_6
        0x25b -> :sswitch_8
        0x25c -> :sswitch_9
        0x25e -> :sswitch_4
        0x25f -> :sswitch_7
        0x262 -> :sswitch_a
        0x263 -> :sswitch_b
    .end sparse-switch
.end method

.method private getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "serverId"
    .parameter "projection"

    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 772
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailboxIdAsString:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 773
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "syncServerId=? and mailboxKey=?"

    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    iget-object v4, v2, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArguments:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private meetingRequestParser(Lcom/android/email/provider/EmailContent$Message;)V
    .locals 3
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    new-instance v0, Lcom/android/email/mail/PackedString$Builder;

    invoke-direct {v0}, Lcom/android/email/mail/PackedString$Builder;-><init>()V

    .line 396
    .local v0, packedString:Lcom/android/email/mail/PackedString$Builder;
    :goto_0
    const/16 v1, 0xa2

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 397
    iget v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    sparse-switch v1, :sswitch_data_0

    .line 424
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 399
    :sswitch_0
    const-string v1, "DTSTAMP"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 402
    :sswitch_1
    const-string v1, "DTSTART"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 405
    :sswitch_2
    const-string v1, "DTEND"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 408
    :sswitch_3
    const-string v1, "ORGMAIL"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 411
    :sswitch_4
    const-string v1, "LOC"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 414
    :sswitch_5
    const-string v1, "UID"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->getUidFromGlobalObjId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 418
    :sswitch_6
    invoke-direct {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nullParser()V

    goto :goto_0

    .line 421
    :sswitch_7
    invoke-direct {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->recurrencesParser()V

    goto :goto_0

    .line 427
    :cond_0
    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 428
    const-string v1, "TITLE"

    iget-object v2, p1, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_1
    invoke-virtual {v0}, Lcom/android/email/mail/PackedString$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    .line 431
    return-void

    .line 397
    nop

    :sswitch_data_0
    .sparse-switch
        0x9b -> :sswitch_6
        0x9d -> :sswitch_0
        0x9e -> :sswitch_2
        0xa1 -> :sswitch_4
        0xa3 -> :sswitch_3
        0xa7 -> :sswitch_7
        0xb1 -> :sswitch_1
        0xb4 -> :sswitch_5
    .end sparse-switch
.end method

.method private nullParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    :goto_0
    const/16 v0, 0x9b

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 435
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 437
    :cond_0
    return-void
.end method

.method private recurrencesParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 440
    :goto_0
    const/16 v0, 0xa7

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 441
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    packed-switch v0, :pswitch_data_0

    .line 446
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 443
    :pswitch_0
    invoke-direct {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nullParser()V

    goto :goto_0

    .line 449
    :cond_0
    return-void

    .line 441
    nop

    :pswitch_data_0
    .packed-switch 0xa8
        :pswitch_0
    .end packed-switch
.end method

.method private syncFetchRepliesParser()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 920
    const/4 v4, 0x0

    .line 921
    .local v4, serverId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 922
    .local v2, msg:Lcom/android/email/provider/EmailContent$Message;
    const/4 v0, 0x0

    .line 924
    .local v0, body:Lcom/android/email/provider/EmailContent$Body;
    :cond_0
    :goto_0
    const/16 v6, 0xa

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    .line 925
    iget v6, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    sparse-switch v6, :sswitch_data_0

    .line 962
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 930
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v5

    .local v5, status:I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 931
    iget-object v6, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sync-Fetch failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    goto :goto_0

    .line 936
    .end local v5           #status:I
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 937
    goto :goto_0

    .line 940
    :sswitch_2
    if-eqz v4, :cond_0

    .line 942
    sget-object v6, Lcom/android/email/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0, v4, v6}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 944
    .local v1, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 945
    new-instance v3, Lcom/android/email/provider/EmailContent$Message;

    invoke-direct {v3}, Lcom/android/email/provider/EmailContent$Message;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 946
    .end local v2           #msg:Lcom/android/email/provider/EmailContent$Message;
    .local v3, msg:Lcom/android/email/provider/EmailContent$Message;
    :try_start_1
    invoke-virtual {v3, v1}, Lcom/android/email/provider/EmailContent$Message;->restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Message;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 949
    .end local v3           #msg:Lcom/android/email/provider/EmailContent$Message;
    .restart local v2       #msg:Lcom/android/email/provider/EmailContent$Message;
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 953
    if-eqz v2, :cond_0

    .line 954
    iget-object v6, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mContext:Landroid/content/Context;

    iget-wide v7, v2, Lcom/android/email/provider/EmailContent$Message;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/email/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Body;

    move-result-object v0

    .line 955
    if-eqz v0, :cond_0

    .line 956
    invoke-direct {p0, v2, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->fetchDataParser(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Body;)V

    goto :goto_0

    .line 949
    :catchall_0
    move-exception v6

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v6

    .line 970
    .end local v1           #c:Landroid/database/Cursor;
    :cond_2
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 971
    iget-object v6, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v7, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mContext:Landroid/content/Context;

    invoke-static {v6, v7, v2, v0}, Lcom/android/exchange/adapter/LoadMoreUtility;->updateEmail(Lcom/android/exchange/AbstractSyncService;Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/provider/EmailContent$Body;)V

    .line 973
    :cond_3
    return-void

    .line 949
    .end local v2           #msg:Lcom/android/email/provider/EmailContent$Message;
    .restart local v1       #c:Landroid/database/Cursor;
    .restart local v3       #msg:Lcom/android/email/provider/EmailContent$Message;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #msg:Lcom/android/email/provider/EmailContent$Message;
    .restart local v2       #msg:Lcom/android/email/provider/EmailContent$Message;
    goto :goto_1

    .line 925
    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_1
        0xe -> :sswitch_0
        0x1d -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public addData(Lcom/android/email/provider/EmailContent$Message;)V
    .locals 11
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v10, "EmailSyncAdapter"

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v0, atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/provider/EmailContent$Attachment;>;"
    const/4 v2, 0x0

    .line 210
    .local v2, fromphone:Z
    const/4 v1, 0x0

    .line 212
    .local v1, flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    :cond_0
    :goto_0
    const/16 v6, 0x1d

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_6

    .line 213
    iget v6, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    sparse-switch v6, :sswitch_data_0

    .line 378
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 216
    :sswitch_0
    invoke-direct {p0, v0, p1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->attachmentsParser(Ljava/util/ArrayList;Lcom/android/email/provider/EmailContent$Message;)V

    goto :goto_0

    .line 227
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/email/mail/Address;->parse2(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v6

    invoke-static {v6}, Lcom/android/email/mail/Address;->pack([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/email/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    goto :goto_0

    .line 238
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/email/mail/Address;->parse2(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v3

    .line 239
    .local v3, froms:[Lcom/android/email/mail/Address;
    if-eqz v3, :cond_1

    array-length v6, v3

    if-lez v6, :cond_1

    .line 240
    aget-object v6, v3, v9

    invoke-virtual {v6}, Lcom/android/email/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/email/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 259
    :cond_1
    invoke-static {v3}, Lcom/android/email/mail/Address;->pack([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/email/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    goto :goto_0

    .line 270
    .end local v3           #froms:[Lcom/android/email/mail/Address;
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/email/mail/Address;->parse2(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v6

    invoke-static {v6}, Lcom/android/email/mail/Address;->pack([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/email/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    goto :goto_0

    .line 281
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/email/mail/Address;->parse2(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v6

    invoke-static {v6}, Lcom/android/email/mail/Address;->pack([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/email/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    goto :goto_0

    .line 284
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/email/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p1, Lcom/android/email/provider/EmailContent$Message;->mTimeStamp:J

    goto :goto_0

    .line 295
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/android/email/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    goto :goto_0

    .line 308
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v6

    if-ne v6, v8, :cond_2

    move v6, v8

    :goto_1
    iput-boolean v6, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    goto :goto_0

    :cond_2
    move v6, v9

    goto :goto_1

    .line 313
    :sswitch_8
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->bodyParser2(Lcom/android/email/provider/EmailContent$Message;)V

    goto :goto_0

    .line 318
    :sswitch_9
    new-instance v1, Lcom/android/email/provider/EmailContent$FollowupFlag;

    .end local v1           #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    invoke-direct {v1}, Lcom/android/email/provider/EmailContent$FollowupFlag;-><init>()V

    .line 319
    .restart local v1       #flags:Lcom/android/email/provider/EmailContent$FollowupFlag;
    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->flagParser(Lcom/android/email/provider/EmailContent$FollowupFlag;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagFavorite:Z

    .line 320
    iget-wide v6, p1, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    iput-wide v6, v1, Lcom/android/email/provider/EmailContent$FollowupFlag;->MsgId:J

    .line 321
    iget-object v6, p1, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    iput-object v6, v1, Lcom/android/email/provider/EmailContent$FollowupFlag;->MsgSyncServerId:Ljava/lang/String;

    .line 322
    iput-object v1, p1, Lcom/android/email/provider/EmailContent$Message;->mFollowupFlag:Lcom/android/email/provider/EmailContent$FollowupFlag;

    .line 323
    iget-object v6, v1, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    sget-object v7, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_ACTIVE:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    if-ne v6, v7, :cond_3

    .line 325
    const/4 v6, 0x2

    iput v6, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagStatus:I

    goto/16 :goto_0

    .line 326
    :cond_3
    iget-object v6, v1, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    sget-object v7, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_COMPLETE:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    if-ne v6, v7, :cond_4

    .line 328
    iput v8, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagStatus:I

    goto/16 :goto_0

    .line 330
    :cond_4
    iput v9, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagStatus:I

    goto/16 :goto_0

    .line 336
    :sswitch_a
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 337
    .local v5, text:Ljava/lang/String;
    iput-object v5, p1, Lcom/android/email/provider/EmailContent$Message;->mText:Ljava/lang/String;

    goto/16 :goto_0

    .line 340
    .end local v5           #text:Ljava/lang/String;
    :sswitch_b
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 341
    .local v4, messageClass:Ljava/lang/String;
    const-string v6, "IPM.Schedule.Meeting.Request"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 342
    iget v6, p1, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p1, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    goto/16 :goto_0

    .line 343
    :cond_5
    const-string v6, "IPM.Schedule.Meeting.Canceled"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 344
    iget v6, p1, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p1, Lcom/android/email/provider/EmailContent$Message;->mFlags:I

    goto/16 :goto_0

    .line 348
    .end local v4           #messageClass:Ljava/lang/String;
    :sswitch_c
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->meetingRequestParser(Lcom/android/email/provider/EmailContent$Message;)V

    goto/16 :goto_0

    .line 354
    :sswitch_d
    const-string v6, "EmailSyncAdapter"

    const-string v6, "EMAIL_BODY_TRUNCATED1"

    invoke-static {v10, v6}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v6

    if-ne v6, v8, :cond_0

    .line 358
    iput-byte v8, p1, Lcom/android/email/provider/EmailContent$Message;->mFlagTruncated:B

    .line 359
    const-string v6, "EmailSyncAdapter"

    const-string v6, "EMAIL_BODY_TRUNCATED2"

    invoke-static {v10, v6}, Lcom/android/exchange/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 373
    :sswitch_e
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p1, Lcom/android/email/provider/EmailContent$Message;->mImportance:I

    goto/16 :goto_0

    .line 382
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_7

    .line 383
    iput-object v0, p1, Lcom/android/email/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 385
    :cond_7
    return-void

    .line 213
    :sswitch_data_0
    .sparse-switch
        0x86 -> :sswitch_0
        0x8c -> :sswitch_a
        0x8e -> :sswitch_d
        0x8f -> :sswitch_5
        0x92 -> :sswitch_e
        0x93 -> :sswitch_b
        0x94 -> :sswitch_6
        0x95 -> :sswitch_7
        0x96 -> :sswitch_1
        0x97 -> :sswitch_3
        0x98 -> :sswitch_2
        0x99 -> :sswitch_4
        0xa2 -> :sswitch_c
        0xba -> :sswitch_9
        0x44a -> :sswitch_8
        0x44e -> :sswitch_0
    .end sparse-switch
.end method

.method changeParser(Ljava/util/ArrayList;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, changes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 824
    const/4 v7, 0x0

    .line 825
    .local v7, serverId:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 826
    .local v2, oldRead:Ljava/lang/Boolean;
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 827
    .local v3, oldFlag:Ljava/lang/Boolean;
    const-wide/16 v4, 0x0

    .line 828
    .local v4, id:J
    :goto_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 829
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    sparse-switch v0, :sswitch_data_0

    .line 848
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 831
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 832
    sget-object v0, Lcom/android/email/provider/EmailContent$Message;->LIST_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0, v7, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 834
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v8, "Changing "

    aput-object v8, v0, v1

    const/4 v1, 0x1

    aput-object v7, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V

    .line 836
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v10, :cond_1

    move v0, v10

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 837
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v10, :cond_2

    move v0, v10

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 838
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 841
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    move v0, v9

    .line 836
    goto :goto_1

    :cond_2
    move v0, v9

    .line 837
    goto :goto_2

    .line 841
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .end local v6           #c:Landroid/database/Cursor;
    :sswitch_1
    move-object v0, p0

    move-object v1, p1

    .line 845
    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->changeApplicationDataParser(Ljava/util/ArrayList;Ljava/lang/Boolean;Ljava/lang/Boolean;J)V

    goto :goto_0

    .line 851
    :cond_3
    return-void

    .line 829
    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x1d -> :sswitch_1
    .end sparse-switch
.end method

.method public commandsParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 885
    :goto_0
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 886
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 887
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->newEmails:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->addParser(Ljava/util/ArrayList;)V

    .line 888
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 889
    :cond_0
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_2

    .line 890
    :cond_1
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->deletedEmails:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->deleteParser(Ljava/util/ArrayList;I)V

    .line 891
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 892
    :cond_2
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 893
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->changedEmails:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->changeParser(Ljava/util/ArrayList;)V

    .line 894
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 896
    :cond_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 898
    :cond_4
    return-void
.end method

.method public commit()V
    .locals 15

    .prologue
    .line 1107
    const/4 v7, 0x0

    .line 1111
    .local v7, notifyCount:I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1112
    .local v8, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v10, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->newEmails:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/email/provider/EmailContent$Message;

    .line 1113
    .local v6, msg:Lcom/android/email/provider/EmailContent$Message;
    iget-boolean v10, v6, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    if-nez v10, :cond_0

    .line 1114
    add-int/lit8 v7, v7, 0x1

    .line 1116
    :cond_0
    invoke-virtual {v6, v8}, Lcom/android/email/provider/EmailContent$Message;->addSaveOps(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1118
    .end local v6           #msg:Lcom/android/email/provider/EmailContent$Message;
    :cond_1
    iget-object v10, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->deletedEmails:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 1119
    .local v4, id:Ljava/lang/Long;
    sget-object v10, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1121
    iget-object v10, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v11, v11, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v10, v11, v12, v13, v14}, Lcom/android/email/provider/AttachmentProvider;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    goto :goto_1

    .line 1123
    .end local v4           #id:Ljava/lang/Long;
    :cond_2
    iget-object v10, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->changedEmails:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_9

    .line 1125
    iget-object v10, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->changedEmails:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;

    .line 1126
    .local v0, change:Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1127
    .local v1, cv:Landroid/content/ContentValues;
    iget-object v10, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->flags:Lcom/android/email/provider/EmailContent$FollowupFlag;

    if-eqz v10, :cond_4

    .line 1129
    iget-object v10, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->flags:Lcom/android/email/provider/EmailContent$FollowupFlag;

    iget-object v10, v10, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    sget-object v11, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_ACTIVE:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    if-ne v10, v11, :cond_7

    .line 1130
    const-string v10, "flagStatus"

    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1137
    :cond_4
    :goto_3
    iget-object v10, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->read:Ljava/lang/Boolean;

    if-eqz v10, :cond_5

    .line 1138
    const-string v10, "flagRead"

    iget-object v11, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->read:Ljava/lang/Boolean;

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1140
    :cond_5
    iget-object v10, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->flag:Ljava/lang/Boolean;

    if-eqz v10, :cond_6

    .line 1141
    const-string v10, "flagFavorite"

    iget-object v11, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->flag:Ljava/lang/Boolean;

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1143
    :cond_6
    sget-object v10, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v11, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->id:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1149
    iget-object v10, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->flags:Lcom/android/email/provider/EmailContent$FollowupFlag;

    if-eqz v10, :cond_3

    .line 1150
    iget-object v10, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->flags:Lcom/android/email/provider/EmailContent$FollowupFlag;

    invoke-virtual {v10}, Lcom/android/email/provider/EmailContent$FollowupFlag;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    .line 1152
    .local v2, ffcv:Landroid/content/ContentValues;
    sget-object v10, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v11, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->id:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1131
    .end local v2           #ffcv:Landroid/content/ContentValues;
    :cond_7
    iget-object v10, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->flags:Lcom/android/email/provider/EmailContent$FollowupFlag;

    iget-object v10, v10, Lcom/android/email/provider/EmailContent$FollowupFlag;->Status:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    sget-object v11, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_COMPLETE:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    if-ne v10, v11, :cond_8

    .line 1133
    const-string v10, "flagStatus"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 1135
    :cond_8
    const-string v10, "flagStatus"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 1162
    .end local v0           #change:Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;
    .end local v1           #cv:Landroid/content/ContentValues;
    :cond_9
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1163
    .local v5, mailboxValues:Landroid/content/ContentValues;
    const-string v10, "syncKey"

    iget-object v11, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v11, v11, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v5, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    sget-object v10, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v11, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v11, v11, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1168
    iget-object v10, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    invoke-static {v10, v8}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$200(Lcom/android/exchange/adapter/EmailSyncAdapter;Ljava/util/ArrayList;)V

    .line 1171
    iget-object v10, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v10}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 1172
    :try_start_0
    iget-object v11, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v11}, Lcom/android/exchange/EasSyncService;->isStopped()Z

    move-result v11

    if-eqz v11, :cond_b

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1195
    :cond_a
    :goto_4
    return-void

    .line 1174
    :cond_b
    :try_start_1
    iget-object v11, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    const-string v12, "com.android.email.provider"

    invoke-virtual {v11, v12, v8}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 1175
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v13, v13, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, " SyncKey saved as: "

    aput-object v13, v11, v12

    const/4 v12, 0x2

    iget-object v13, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-object v13, v13, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {p0, v11}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1181
    :goto_5
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1183
    if-lez v7, :cond_a

    .line 1188
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1189
    .restart local v1       #cv:Landroid/content/ContentValues;
    const-string v10, "field"

    const-string v11, "newMessageCount"

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    const-string v10, "add"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1191
    sget-object v10, Lcom/android/email/provider/EmailContent$Account;->ADD_TO_FIELD_URI:Landroid/net/Uri;

    iget-object v11, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v11, v11, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v10, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 1192
    .local v9, uri:Landroid/net/Uri;
    iget-object v10, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v9, v1, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1193
    iget-object v10, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v11, v11, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {v10, v11, v12}, Lcom/android/email/service/MailService;->actionNotifyNewMessages(Landroid/content/Context;J)V

    goto :goto_4

    .line 1181
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v9           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v11

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v11

    .line 1178
    :catch_0
    move-exception v11

    goto :goto_5

    .line 1176
    :catch_1
    move-exception v11

    goto :goto_5
.end method

.method deleteParser(Ljava/util/ArrayList;I)V
    .locals 6
    .parameter
    .parameter "entryTag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 778
    .local p1, deletes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 779
    iget v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    packed-switch v3, :pswitch_data_0

    .line 802
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 781
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 783
    .local v2, serverId:Ljava/lang/String;
    invoke-static {}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$100()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 785
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 786
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    sget-boolean v3, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v3, :cond_0

    .line 791
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 792
    .local v1, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 793
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Deleting "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 798
    .end local v1           #sb:Ljava/lang/StringBuffer;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    .line 805
    .end local v0           #c:Landroid/database/Cursor;
    .end local v2           #serverId:Ljava/lang/String;
    :cond_1
    return-void

    .line 779
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public getMimeTypeFromFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "fileName"

    .prologue
    .line 753
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 754
    .local v1, lastDot:I
    const/4 v0, 0x0

    .line 755
    .local v0, extension:Ljava/lang/String;
    if-lez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_0

    .line 756
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 758
    :cond_0
    if-nez v0, :cond_2

    .line 760
    const-string v2, "application/octet-stream"

    .line 767
    .local v2, mimeType:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v2

    .line 762
    .end local v2           #mimeType:Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 763
    .restart local v2       #mimeType:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 764
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "application/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public moveResponseParser()V
    .locals 0

    .prologue
    .line 1103
    return-void
.end method

.method public responsesParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 904
    :goto_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 905
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    packed-switch v0, :pswitch_data_0

    .line 910
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 907
    :pswitch_0
    invoke-direct {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->syncFetchRepliesParser()V

    goto :goto_0

    .line 915
    :cond_0
    return-void

    .line 905
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public wipe()V
    .locals 14

    .prologue
    const/4 v11, 0x0

    const-string v13, "mailboxKey="

    const-string v12, "EmailSyncAdapter"

    .line 180
    const-string v6, "EmailSyncAdapter"

    const-string v6, "EMAIL BAD SYNC KEY"

    invoke-static {v12, v6}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 183
    .local v0, cvx:Landroid/content/ContentValues;
    const-string v6, "syncKey"

    const-string v7, "0"

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    sget-object v6, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 185
    .local v1, mMailboxUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v6, v1, v0, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 186
    .local v2, mailboxCount:I
    const-string v6, "EmailSyncAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updating Email mailbox with sync key 0. Count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v6, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mailboxKey="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v9, v9, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 191
    .local v3, messageCount:I
    const-string v6, "EmailSyncAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EmailProvider Message table row deleted. Count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v6, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/email/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mailboxKey="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v9, v9, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 196
    .local v4, msgDeletedCount:I
    const-string v6, "EmailSyncAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EmailProvider Message_Deletes table row deleted. Count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v6, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/email/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mailboxKey="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v9, v9, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 201
    .local v5, msgUpdatedCount:I
    const-string v6, "EmailSyncAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EmailProvider Message_Updates row deleted. Count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Lcom/android/exchange/SyncManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method
