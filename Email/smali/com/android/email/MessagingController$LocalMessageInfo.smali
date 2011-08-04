.class Lcom/android/email/MessagingController$LocalMessageInfo;
.super Ljava/lang/Object;
.source "MessagingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/MessagingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalMessageInfo"
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field mCursorIndex:I

.field mFlagAttachment:Z

.field mFlagFavorite:Z

.field mFlagLoaded:I

.field mFlagRead:Z

.field mFlagTruncated:B

.field mId:J

.field mServerId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 850
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "flagLoaded"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "syncServerId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "flagAttachment"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mailboxKey"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/MessagingController$LocalMessageInfo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 4
    .parameter "c"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 866
    iput-boolean v2, p0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagAttachment:Z

    .line 869
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/android/email/MessagingController$LocalMessageInfo;->mCursorIndex:I

    .line 870
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    .line 871
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagRead:Z

    .line 872
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagFavorite:Z

    .line 875
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagLoaded:I

    .line 876
    iget v0, p0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagLoaded:I

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagTruncated:B

    .line 877
    iget v0, p0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagLoaded:I

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagLoaded:I

    .line 879
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/MessagingController$LocalMessageInfo;->mServerId:Ljava/lang/String;

    .line 881
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    :goto_2
    iput-boolean v0, p0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagAttachment:Z

    .line 882
    return-void

    :cond_0
    move v0, v2

    .line 871
    goto :goto_0

    :cond_1
    move v0, v2

    .line 872
    goto :goto_1

    :cond_2
    move v0, v2

    .line 881
    goto :goto_2
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 843
    sget-object v0, Lcom/android/email/MessagingController$LocalMessageInfo;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method
