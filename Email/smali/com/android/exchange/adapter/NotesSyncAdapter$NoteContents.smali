.class Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
.super Ljava/lang/Object;
.source "NotesSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/NotesSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoteContents"
.end annotation


# instance fields
.field private final mAccountKey:J

.field public final mAccountType:Ljava/lang/String;

.field private mBodyData:Ljava/lang/String;

.field private mBodySize:J

.field private mBodyTruncated:Z

.field private mBodyType:I

.field private mCategories:Ljava/lang/String;

.field private mClientID:Ljava/lang/String;

.field private mDeletedMsgRecieved:Z

.field public final mDisplayName:Ljava/lang/String;

.field public final mEmailAddress:Ljava/lang/String;

.field private mFlagNoteLoaded:Z

.field private mFlagNoteMoved:Z

.field private mFlagNoteRead:Z

.field private mHtmlText:Ljava/lang/String;

.field private mLastModifyDate:Ljava/lang/String;

.field private mMessageForeignKey:J

.field private mModifiedMsgRecieved:Z

.field private mNewMsgRecieved:Z

.field private mNewNoteCount:J

.field private mPlanText:Ljava/lang/String;

.field private mServerIDNote:Ljava/lang/String;

.field private mServerTimeStamp:Ljava/lang/String;

.field private mSubject:Ljava/lang/String;

.field private mSyncNeededFlag:I

.field final synthetic this$0:Lcom/android/exchange/adapter/NotesSyncAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/NotesSyncAdapter;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "account_key"
    .parameter "accountType"
    .parameter "displayName"
    .parameter "emailAddress"

    .prologue
    .line 494
    iput-object p1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->this$0:Lcom/android/exchange/adapter/NotesSyncAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    iput-wide p2, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mAccountKey:J

    .line 497
    iput-object p4, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mAccountType:Ljava/lang/String;

    .line 498
    iput-object p5, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mDisplayName:Ljava/lang/String;

    .line 499
    iput-object p6, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mEmailAddress:Ljava/lang/String;

    .line 501
    invoke-direct {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->init()V

    .line 502
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 504
    iput-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mServerIDNote:Ljava/lang/String;

    .line 505
    iput-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mSubject:Ljava/lang/String;

    .line 506
    iput-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mLastModifyDate:Ljava/lang/String;

    .line 507
    iput-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mHtmlText:Ljava/lang/String;

    .line 508
    iput-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mPlanText:Ljava/lang/String;

    .line 509
    iput-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mCategories:Ljava/lang/String;

    .line 510
    iput-boolean v2, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mFlagNoteRead:Z

    .line 511
    iput-wide v3, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mNewNoteCount:J

    .line 512
    iput-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mServerTimeStamp:Ljava/lang/String;

    .line 513
    iput-boolean v2, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mFlagNoteLoaded:Z

    .line 514
    iput-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mClientID:Ljava/lang/String;

    .line 515
    iput-boolean v2, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mFlagNoteMoved:Z

    .line 516
    iput v2, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mSyncNeededFlag:I

    .line 517
    iput-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mBodyData:Ljava/lang/String;

    .line 518
    iput-wide v3, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mBodySize:J

    .line 519
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mBodyType:I

    .line 520
    iput-boolean v2, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mBodyTruncated:Z

    .line 521
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mMessageForeignKey:J

    .line 522
    iput-boolean v2, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mNewMsgRecieved:Z

    .line 523
    iput-boolean v2, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mModifiedMsgRecieved:Z

    .line 524
    iput-boolean v2, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mDeletedMsgRecieved:Z

    .line 526
    return-void
.end method


# virtual methods
.method public checkDeletedMsgRecieved()Z
    .locals 1

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mDeletedMsgRecieved:Z

    return v0
.end method

.method public checkModifiedMsgRecieved()Z
    .locals 1

    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mModifiedMsgRecieved:Z

    return v0
.end method

.method public checkNewMsgRecieved()Z
    .locals 1

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mNewMsgRecieved:Z

    return v0
.end method

.method public getBodyData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mBodyData:Ljava/lang/String;

    return-object v0
.end method

.method public getBodySize()J
    .locals 2

    .prologue
    .line 566
    iget-wide v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mBodySize:J

    return-wide v0
.end method

.method public getBodyTruncated()Z
    .locals 1

    .prologue
    .line 592
    iget-boolean v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mBodyTruncated:Z

    return v0
.end method

.method public getBodyType()I
    .locals 1

    .prologue
    .line 588
    iget v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mBodyType:I

    return v0
.end method

.method public getMessageForeignKey()J
    .locals 2

    .prologue
    .line 555
    iget-wide v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mMessageForeignKey:J

    return-wide v0
.end method

.method public getSyncNeededFlag()I
    .locals 1

    .prologue
    .line 664
    iget v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mSyncNeededFlag:I

    return v0
.end method

.method public getmAccountKey()J
    .locals 2

    .prologue
    .line 605
    iget-wide v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mAccountKey:J

    return-wide v0
.end method

.method public getmCategories()Ljava/lang/String;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mCategories:Ljava/lang/String;

    return-object v0
.end method

.method public getmClientID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mClientID:Ljava/lang/String;

    return-object v0
.end method

.method public getmDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getmLastModifyDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mLastModifyDate:Ljava/lang/String;

    return-object v0
.end method

.method public getmServerIDNote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mServerIDNote:Ljava/lang/String;

    return-object v0
.end method

.method public getmSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public setBodyData(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 571
    iput-object p1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mBodyData:Ljava/lang/String;

    .line 572
    return-void
.end method

.method public setBodySize(J)V
    .locals 0
    .parameter "size"

    .prologue
    .line 562
    iput-wide p1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mBodySize:J

    .line 563
    return-void
.end method

.method public setBodyTruncated(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 579
    iput-boolean p1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mBodyTruncated:Z

    .line 580
    return-void
.end method

.method public setBodyType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 575
    iput p1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mBodyType:I

    .line 576
    return-void
.end method

.method public setDeletedMsgRecieved(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 550
    iput-boolean p1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mDeletedMsgRecieved:Z

    .line 551
    return-void
.end method

.method public setModifiedMsgRecieved(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 541
    iput-boolean p1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mModifiedMsgRecieved:Z

    .line 542
    return-void
.end method

.method public setNewMsgRecieved(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 533
    iput-boolean p1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mNewMsgRecieved:Z

    .line 534
    return-void
.end method

.method public setSyncNeededFlag(I)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 660
    iput p1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mSyncNeededFlag:I

    .line 661
    return-void
.end method

.method public setmCategories(Ljava/lang/String;)V
    .locals 2
    .parameter "categories"

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mCategories:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 669
    iput-object p1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mCategories:Ljava/lang/String;

    .line 674
    :goto_0
    return-void

    .line 671
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mCategories:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mCategories:Ljava/lang/String;

    goto :goto_0
.end method

.method public setmClientID(Ljava/lang/String;)V
    .locals 0
    .parameter "mClientID"

    .prologue
    .line 714
    iput-object p1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mClientID:Ljava/lang/String;

    .line 715
    return-void
.end method

.method public setmLastModifyDate(Ljava/lang/String;)V
    .locals 0
    .parameter "mLastModifyDate"

    .prologue
    .line 635
    iput-object p1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mLastModifyDate:Ljava/lang/String;

    .line 636
    return-void
.end method

.method public setmServerIDNote(Ljava/lang/String;)V
    .locals 0
    .parameter "mServerIDNote"

    .prologue
    .line 619
    iput-object p1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mServerIDNote:Ljava/lang/String;

    .line 620
    return-void
.end method

.method public setmSubject(Ljava/lang/String;)V
    .locals 0
    .parameter "mSubject"

    .prologue
    .line 627
    iput-object p1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mSubject:Ljava/lang/String;

    .line 628
    return-void
.end method

.method public updateMessageForeignKey(J)V
    .locals 0
    .parameter "key"

    .prologue
    .line 558
    iput-wide p1, p0, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->mMessageForeignKey:J

    .line 559
    return-void
.end method
