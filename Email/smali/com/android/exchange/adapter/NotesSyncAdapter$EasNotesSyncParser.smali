.class Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "NotesSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/NotesSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EasNotesSyncParser"
.end annotation


# instance fields
.field mNewMsgCount:J

.field mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

.field final synthetic this$0:Lcom/android/exchange/adapter/NotesSyncAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/NotesSyncAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/NotesSyncAdapter;)V
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
    .line 736
    iput-object p1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->this$0:Lcom/android/exchange/adapter/NotesSyncAdapter;

    .line 737
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 732
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    .line 733
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNewMsgCount:J

    .line 739
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/android/exchange/adapter/NotesSyncAdapter;->mNoteList:Ljava/util/ArrayList;

    .line 742
    return-void
.end method

.method private addData()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    .line 876
    :cond_0
    :goto_0
    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->nextTag(I)I

    move-result v1

    if-eq v1, v5, :cond_2

    .line 878
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NotesSync Tag:+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->userLog([Ljava/lang/String;)V

    .line 879
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v1, :sswitch_data_0

    .line 906
    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->skipTag()V

    goto :goto_0

    .line 882
    :cond_1
    :goto_1
    :sswitch_0
    const/16 v1, 0x5c8

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->nextTag(I)I

    move-result v1

    if-eq v1, v5, :cond_0

    .line 883
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x5c9

    if-ne v1, v2, :cond_1

    .line 884
    iget-object v1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setmCategories(Ljava/lang/String;)V

    goto :goto_1

    .line 891
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->parseNotesDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 892
    .local v0, timeInMs:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {v1, v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setmLastModifyDate(Ljava/lang/String;)V

    goto :goto_0

    .line 897
    .end local v0           #timeInMs:Ljava/lang/String;
    :sswitch_2
    iget-object v1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setmSubject(Ljava/lang/String;)V

    goto :goto_0

    .line 901
    :sswitch_3
    invoke-direct {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->bodyParser()V

    goto :goto_0

    .line 912
    :cond_2
    return-void

    .line 879
    nop

    :sswitch_data_0
    .sparse-switch
        0x44a -> :sswitch_3
        0x5c5 -> :sswitch_2
        0x5c7 -> :sswitch_1
        0x5c8 -> :sswitch_0
    .end sparse-switch
.end method

.method private addParser()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 847
    :goto_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 849
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotesSync Tag:+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->userLog([Ljava/lang/String;)V

    .line 850
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 853
    :sswitch_0
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setmServerIDNote(Ljava/lang/String;)V

    goto :goto_0

    .line 857
    :sswitch_1
    invoke-direct {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->addData()V

    goto :goto_0

    .line 863
    :cond_0
    return-void

    .line 850
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x1d -> :sswitch_1
    .end sparse-switch
.end method

.method private bodyParser()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 915
    const/4 v0, 0x0

    .line 916
    .local v0, value:Ljava/lang/String;
    :goto_0
    const/16 v1, 0x44a

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 917
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NotesSync Tag:+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->userLog([Ljava/lang/String;)V

    .line 918
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 950
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->skipTag()V

    goto :goto_0

    .line 924
    :pswitch_1
    iget-object v1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setBodyType(I)V

    goto :goto_0

    .line 931
    :pswitch_2
    iget-object v1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setBodySize(J)V

    goto :goto_0

    .line 938
    :pswitch_3
    iget-object v1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setBodyTruncated(Z)V

    goto :goto_0

    .line 946
    :pswitch_4
    iget-object v1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setBodyData(Ljava/lang/String;)V

    goto :goto_0

    .line 955
    :cond_0
    return-void

    .line 918
    :pswitch_data_0
    .packed-switch 0x446
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private changeParser()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 829
    :goto_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 831
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotesSync Tag:+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->userLog([Ljava/lang/String;)V

    .line 832
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 835
    :sswitch_0
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setmServerIDNote(Ljava/lang/String;)V

    goto :goto_0

    .line 839
    :sswitch_1
    invoke-direct {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->addData()V

    goto :goto_0

    .line 844
    :cond_0
    return-void

    .line 832
    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x1d -> :sswitch_1
    .end sparse-switch
.end method

.method private deleteParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 819
    :cond_0
    :goto_0
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 821
    const/16 v0, 0xd

    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    if-ne v0, v1, :cond_0

    .line 822
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setmServerIDNote(Ljava/lang/String;)V

    goto :goto_0

    .line 825
    :cond_1
    return-void
.end method


# virtual methods
.method public commandsParser()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v10, "Notes"

    const-string v4, "Eas"

    const-string v9, " Server ID: "

    .line 752
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNewMsgCount:J

    .line 754
    :cond_0
    :goto_0
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 757
    new-array v0, v8, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotesSync Tag:+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->userLog([Ljava/lang/String;)V

    .line 758
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 760
    new-instance v0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    iget-object v1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->this$0:Lcom/android/exchange/adapter/NotesSyncAdapter;

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent;->mId:J

    const-string v5, "Eas"

    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v5}, Lcom/android/email/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v6}, Lcom/android/email/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;-><init>(Lcom/android/exchange/adapter/NotesSyncAdapter;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    .line 765
    invoke-direct {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->addParser()V

    .line 766
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->this$0:Lcom/android/exchange/adapter/NotesSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/NotesSyncAdapter;->incrementChangeCount()V

    .line 768
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {v0, v7}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setSyncNeededFlag(I)V

    .line 769
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {v0, v8}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setNewMsgRecieved(Z)V

    .line 770
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->this$0:Lcom/android/exchange/adapter/NotesSyncAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mNoteList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    iget-wide v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNewMsgCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNewMsgCount:J

    .line 773
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_0

    .line 774
    const-string v0, "Notes"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recieved NEW Note --  Account ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Server ID: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {v1}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmServerIDNote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 777
    :cond_1
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 779
    new-instance v0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    iget-object v1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->this$0:Lcom/android/exchange/adapter/NotesSyncAdapter;

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent;->mId:J

    const-string v5, "Eas"

    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v5}, Lcom/android/email/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v6}, Lcom/android/email/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;-><init>(Lcom/android/exchange/adapter/NotesSyncAdapter;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    .line 783
    invoke-direct {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->changeParser()V

    .line 784
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->this$0:Lcom/android/exchange/adapter/NotesSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/NotesSyncAdapter;->incrementChangeCount()V

    .line 786
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {v0, v7}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setSyncNeededFlag(I)V

    .line 787
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {v0, v8}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setModifiedMsgRecieved(Z)V

    .line 788
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->this$0:Lcom/android/exchange/adapter/NotesSyncAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mNoteList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_0

    .line 791
    const-string v0, "Notes"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recieved CHANGED Note --  Account ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Server ID: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {v1}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmServerIDNote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 795
    :cond_2
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 797
    new-instance v0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    iget-object v1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->this$0:Lcom/android/exchange/adapter/NotesSyncAdapter;

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent;->mId:J

    const-string v5, "Eas"

    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v5}, Lcom/android/email/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    invoke-virtual {v6}, Lcom/android/email/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;-><init>(Lcom/android/exchange/adapter/NotesSyncAdapter;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    .line 801
    invoke-direct {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->deleteParser()V

    .line 802
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->this$0:Lcom/android/exchange/adapter/NotesSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/NotesSyncAdapter;->incrementChangeCount()V

    .line 804
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {v0, v7}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setSyncNeededFlag(I)V

    .line 805
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {v0, v8}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setDeletedMsgRecieved(Z)V

    .line 806
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->this$0:Lcom/android/exchange/adapter/NotesSyncAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mNoteList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_0

    .line 809
    const-string v0, "Notes"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recieved DELETED Note --  Account ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Server ID: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->mNote:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    invoke-virtual {v1}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmServerIDNote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 816
    :cond_3
    return-void
.end method

.method public commit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 964
    const/4 v0, 0x0

    .line 966
    .local v0, noteIndex:I
    :goto_0
    iget-object v1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->this$0:Lcom/android/exchange/adapter/NotesSyncAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/NotesSyncAdapter;->mNoteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 967
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->committMessage(I)V

    .line 968
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->committBody(I)V

    .line 969
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 971
    :cond_0
    return-void
.end method

.method public committBody(I)V
    .locals 7
    .parameter "noteIndex"

    .prologue
    const/4 v6, 0x0

    .line 1035
    iget-object v3, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->this$0:Lcom/android/exchange/adapter/NotesSyncAdapter;

    iget-object v3, v3, Lcom/android/exchange/adapter/NotesSyncAdapter;->mNoteList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    .line 1037
    .local v0, Note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    invoke-virtual {v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->checkNewMsgRecieved()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->checkModifiedMsgRecieved()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1040
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1041
    .local v1, cv:Landroid/content/ContentValues;
    const-string v3, "_id"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getMessageForeignKey()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1042
    const-string v3, "noteKey"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getMessageForeignKey()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1043
    const-string v3, "size"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getBodySize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1044
    const-string v3, "type"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getBodyType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1045
    const-string v3, "truncated"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getBodyTruncated()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1048
    const-string v3, "textContent"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getBodyData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    const-string v3, "accountKey"

    invoke-virtual {v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmAccountKey()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1051
    invoke-virtual {v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->checkNewMsgRecieved()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1052
    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Notes$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 1053
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    .line 1065
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 1056
    .restart local v1       #cv:Landroid/content/ContentValues;
    .restart local p0
    :cond_2
    sget-object v3, Landroid/provider/Notes$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getMessageForeignKey()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1057
    .restart local v2       #uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1060
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_3
    invoke-virtual {v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->checkDeletedMsgRecieved()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1062
    sget-object v3, Landroid/provider/Notes$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getMessageForeignKey()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1063
    .restart local v2       #uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public committMessage(I)V
    .locals 14
    .parameter "noteIndex"

    .prologue
    const/4 v5, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    const-string v11, "_id"

    const-string v3, "server_id=?"

    .line 975
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->this$0:Lcom/android/exchange/adapter/NotesSyncAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mNoteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    .line 977
    .local v6, Note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    invoke-virtual {v6}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->checkNewMsgRecieved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v6}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->checkModifiedMsgRecieved()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 980
    :cond_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 981
    .local v8, cv:Landroid/content/ContentValues;
    const-string v0, "accountKey"

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v3, v1, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 982
    const-string v0, "server_id"

    invoke-virtual {v6}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmServerIDNote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    const-string v0, "subject"

    invoke-virtual {v6}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    const-string v0, "displayName"

    invoke-virtual {v6}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    const-string v0, "last_modified_date"

    invoke-virtual {v6}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmLastModifyDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    const-string v0, "categories"

    invoke-virtual {v6}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmCategories()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    const-string v0, "flag_sync_needed"

    invoke-virtual {v6}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getSyncNeededFlag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 989
    invoke-virtual {v6}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->checkNewMsgRecieved()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 990
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Notes$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 991
    .local v10, uri:Landroid/net/Uri;
    invoke-virtual {v10}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 992
    .local v9, id:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v6, v0, v1}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->updateMessageForeignKey(J)V

    .line 1031
    .end local v8           #cv:Landroid/content/ContentValues;
    .end local v9           #id:Ljava/lang/String;
    .end local v10           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 995
    .restart local v8       #cv:Landroid/content/ContentValues;
    :cond_2
    new-array v2, v13, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v11, v2, v12

    .line 997
    .local v2, projection:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 999
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Notes$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "server_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v6}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmServerIDNote()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1001
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1003
    sget-object v0, Landroid/provider/Notes$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 1005
    .restart local v10       #uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v10, v8, v1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1007
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v6, v0, v1}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->updateMessageForeignKey(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1010
    if-eqz v7, :cond_8

    move v0, v13

    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v13

    :goto_2
    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 1011
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1010
    .end local v10           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    move v1, v13

    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v13

    :goto_4
    and-int/2addr v1, v3

    if-eqz v1, :cond_3

    .line 1011
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1010
    :cond_3
    throw v0

    .line 1017
    .end local v2           #projection:[Ljava/lang/String;
    .end local v7           #c:Landroid/database/Cursor;
    .end local v8           #cv:Landroid/content/ContentValues;
    :cond_4
    invoke-virtual {v6}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->checkDeletedMsgRecieved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1020
    new-array v2, v13, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v11, v2, v12

    .line 1021
    .restart local v2       #projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Notes$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "server_id=?"

    new-array v4, v13, [Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmServerIDNote()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v12

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1022
    .restart local v7       #c:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1024
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v6, v0, v1}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->updateMessageForeignKey(J)V

    .line 1028
    :cond_5
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Notes$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "server_id=?"

    new-array v4, v13, [Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmServerIDNote()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v12

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v8       #cv:Landroid/content/ContentValues;
    :cond_6
    move v1, v12

    .line 1010
    goto :goto_3

    :cond_7
    move v3, v12

    goto :goto_4

    .restart local v10       #uri:Landroid/net/Uri;
    :cond_8
    move v0, v12

    goto :goto_1

    :cond_9
    move v1, v12

    goto :goto_2
.end method

.method public parseAddResponse()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1068
    const-wide/16 v16, -0x1

    .line 1069
    .local v16, status:J
    const/4 v12, 0x0

    .line 1070
    .local v12, clientId:Ljava/lang/String;
    const/4 v15, 0x0

    .line 1072
    .local v15, serverId:Ljava/lang/String;
    :goto_0
    const/4 v5, 0x7

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->nextTag(I)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 1073
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/adapter/Parser;->tag:I

    move v5, v0

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 1079
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 1080
    goto :goto_0

    .line 1076
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->getValueInt()I

    move-result v5

    move v0, v5

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 1077
    goto :goto_0

    .line 1082
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->getValue()Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    .line 1087
    :cond_0
    const-wide/16 v5, 0x1

    cmp-long v5, v16, v5

    if-nez v5, :cond_4

    .line 1089
    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v7, v5

    .line 1092
    .local v7, projection:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 1094
    .local v11, c:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Notes$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    const-string v8, "clientId=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v12, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1096
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1098
    sget-object v5, Landroid/provider/Notes$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 1099
    .local v20, uri_update:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v20

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1101
    .end local v7           #projection:[Ljava/lang/String;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1102
    .local v13, cv:Landroid/content/ContentValues;
    const-string v5, "server_id"

    invoke-virtual {v13, v5, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    const-string v5, "flag_sync_needed"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1104
    const-string v5, "clientId"

    const-string v6, "0"

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    sget-object v5, Landroid/provider/Notes$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 1107
    .local v18, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v18

    move-object v2, v13

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1109
    sget-boolean v5, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v5, :cond_1

    .line 1110
    const-string v5, "Notes"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Done! Local Note ADDDITION --  Account ID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v7, v0

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Client ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Server ID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1116
    .end local v13           #cv:Landroid/content/ContentValues;
    .end local v18           #uri:Landroid/net/Uri;
    .end local v20           #uri_update:Landroid/net/Uri;
    :cond_1
    if-eqz v11, :cond_7

    const/4 v5, 0x1

    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_8

    const/4 v6, 0x1

    :goto_2
    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    .line 1117
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1136
    .end local v11           #c:Landroid/database/Cursor;
    :cond_2
    :goto_3
    return-void

    .line 1116
    .restart local v11       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v5

    if-eqz v11, :cond_5

    const/4 v6, 0x1

    :goto_4
    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_6

    const/4 v7, 0x1

    :goto_5
    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    .line 1117
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1116
    :cond_3
    throw v5

    .line 1121
    .end local v11           #c:Landroid/database/Cursor;
    :cond_4
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1122
    .restart local v13       #cv:Landroid/content/ContentValues;
    const-string v5, "flag_sync_needed"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Notes$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    const-string v7, "clientId=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v12, v8, v9

    invoke-virtual {v5, v6, v13, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1125
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1126
    .local v14, cv_acc:Landroid/content/ContentValues;
    const-string v5, "syncNeeded"

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1127
    sget-object v5, Landroid/provider/Notes$Account;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v6, v0

    iget-wide v6, v6, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 1128
    .local v19, uri_acc:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v19

    move-object v2, v14

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1130
    sget-boolean v5, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v5, :cond_2

    .line 1131
    const-string v5, "Notes"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed while ADDING local Note ( Status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") -- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Account ID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v7, v0

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Client ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1116
    .end local v13           #cv:Landroid/content/ContentValues;
    .end local v14           #cv_acc:Landroid/content/ContentValues;
    .end local v19           #uri_acc:Landroid/net/Uri;
    .restart local v11       #c:Landroid/database/Cursor;
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_5

    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 1073
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public parseChangeResponse()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 1172
    const-wide/16 v3, -0x1

    .line 1173
    .local v3, status:J
    const/4 v2, 0x0

    .line 1175
    .local v2, serverId:Ljava/lang/String;
    :goto_0
    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->nextTag(I)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    .line 1176
    iget v6, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 1182
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1179
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->getValueInt()I

    move-result v6

    int-to-long v3, v6

    .line 1180
    goto :goto_0

    .line 1187
    :cond_0
    const-wide/16 v6, 0x1

    cmp-long v6, v3, v6

    if-eqz v6, :cond_1

    .line 1189
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1190
    .local v0, cv:Landroid/content/ContentValues;
    const-string v6, "flag_sync_needed"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1191
    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Notes$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    const-string v8, "server_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-virtual {v6, v7, v0, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1194
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1195
    .local v1, cv_acc:Landroid/content/ContentValues;
    const-string v6, "syncNeeded"

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1196
    sget-object v6, Landroid/provider/Notes$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1197
    .local v5, uri_acc:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5, v1, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1199
    sget-boolean v6, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v6, :cond_1

    .line 1200
    const-string v6, "Notes"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed while MODIFYING local Note ( Status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") -- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Account ID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Server ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #cv_acc:Landroid/content/ContentValues;
    .end local v5           #uri_acc:Landroid/net/Uri;
    :cond_1
    return-void

    .line 1176
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public parseDeleteResponse()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x3

    .line 1140
    const-wide/16 v3, -0x1

    .line 1141
    .local v3, status:J
    const/4 v2, 0x0

    .line 1143
    .local v2, serverId:Ljava/lang/String;
    :goto_0
    const/16 v6, 0x9

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->nextTag(I)I

    move-result v6

    if-eq v6, v8, :cond_0

    .line 1144
    iget v6, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 1150
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1147
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->getValueInt()I

    move-result v6

    int-to-long v3, v6

    .line 1148
    goto :goto_0

    .line 1155
    :cond_0
    const-wide/16 v6, 0x1

    cmp-long v6, v3, v6

    if-eqz v6, :cond_1

    .line 1156
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1157
    .local v0, cv:Landroid/content/ContentValues;
    const-string v6, "flag_sync_needed"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1158
    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Notes$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    const-string v8, "server_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-virtual {v6, v7, v0, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1160
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1161
    .local v1, cv_acc:Landroid/content/ContentValues;
    const-string v6, "syncNeeded"

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1162
    sget-object v6, Landroid/provider/Notes$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1163
    .local v5, uri_acc:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5, v1, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1165
    sget-boolean v6, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v6, :cond_1

    .line 1166
    const-string v6, "Notes"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed while DELETING local Note ( Status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") -- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Account ID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Server ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #cv_acc:Landroid/content/ContentValues;
    .end local v5           #uri_acc:Landroid/net/Uri;
    :cond_1
    return-void

    .line 1144
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public parseNotesDateTimeToMillis(Ljava/lang/String;)J
    .locals 8
    .parameter "date"

    .prologue
    const/16 v7, 0xd

    const/16 v5, 0xb

    const/4 v4, 0x6

    const/4 v2, 0x4

    .line 866
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/16 v3, 0x8

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x9

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xf

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 870
    .local v0, cal:Ljava/util/GregorianCalendar;
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 871
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public responsesParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1210
    :goto_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1213
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1216
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->parseAddResponse()V

    goto :goto_0

    .line 1222
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->parseChangeResponse()V

    goto :goto_0

    .line 1228
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->parseDeleteResponse()V

    goto :goto_0

    .line 1234
    :cond_0
    return-void

    .line 1213
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public wipe()V
    .locals 12

    .prologue
    .line 1241
    const/4 v8, 0x0

    .line 1242
    .local v8, count:I
    const/4 v7, 0x0

    .line 1243
    .local v7, c_msg:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 1244
    .local v9, cv:Landroid/content/ContentValues;
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    .line 1247
    .local v6, argument:[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Notes$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Notes$Message;->MESSAGE_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .end local v9           #cv:Landroid/content/ContentValues;
    iget-wide v9, v9, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1248
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    .line 1249
    .local v10, nextMsg:Z
    :goto_0
    if-eqz v10, :cond_1

    .line 1250
    sget-object v0, Landroid/provider/Notes$Body;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 1251
    .local v11, uri_body:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v11, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1252
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 1253
    goto :goto_0

    .line 1255
    .end local v10           #nextMsg:Z
    .end local v11           #uri_body:Landroid/net/Uri;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1256
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1255
    :cond_0
    throw v0

    .restart local v10       #nextMsg:Z
    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1256
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1260
    :cond_2
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Notes$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "accountKey=?"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1261
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Notes$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "accountKey=?"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1262
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Notes$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "accountKey=?"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1264
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1265
    .restart local v9       #cv:Landroid/content/ContentValues;
    const-string v0, "syncKey"

    const-string v1, "0"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1268
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_3

    .line 1269
    const-string v0, "Notes"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Note\'s Wipe is recieved  for  Account ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Email: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    :cond_3
    return-void
.end method
