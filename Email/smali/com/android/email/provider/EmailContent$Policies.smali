.class public Lcom/android/email/provider/EmailContent$Policies;
.super Lcom/android/email/provider/EmailContent;
.source "EmailContent.java"

# interfaces
.implements Lcom/android/email/provider/EmailContent$PoliciesColumns;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/EmailContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Policies"
.end annotation


# static fields
.field public static final CONTENT_ACCOUNT_ID_COLUMN:I = 0x4

.field public static final CONTENT_ID_COLUMN:I = 0x0

.field public static final CONTENT_NAME_COLUMN:I = 0x1

.field public static final CONTENT_PROJECTION:[Ljava/lang/String; = null

.field public static final CONTENT_TYPE_COLUMN:I = 0x2

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_VALUE_COLUMN:I = 0x3

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/email/provider/EmailContent$Policies;",
            ">;"
        }
    .end annotation
.end field

.field public static final TABLE_NAME:Ljava/lang/String; = "Policies"


# instance fields
.field public mAccountId:J

.field public mName:Ljava/lang/String;

.field public mType:Ljava/lang/String;

.field public mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 3615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/email/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/policies"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    .line 3628
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "value"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "account_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/provider/EmailContent$Policies;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 3708
    new-instance v0, Lcom/android/email/provider/EmailContent$Policies$1;

    invoke-direct {v0}, Lcom/android/email/provider/EmailContent$Policies$1;-><init>()V

    sput-object v0, Lcom/android/email/provider/EmailContent$Policies;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3632
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/provider/EmailContent;-><init>(Lcom/android/email/provider/EmailContent$1;)V

    .line 3633
    sget-object v0, Lcom/android/email/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Policies;->mBaseUri:Landroid/net/Uri;

    .line 3634
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 3734
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/provider/EmailContent;-><init>(Lcom/android/email/provider/EmailContent$1;)V

    .line 3735
    sget-object v0, Lcom/android/email/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Policies;->mBaseUri:Landroid/net/Uri;

    .line 3736
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/provider/EmailContent$Policies;->mId:J

    .line 3737
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 3738
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 3739
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 3740
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/provider/EmailContent$Policies;->mAccountId:J

    .line 3741
    return-void
.end method

.method public static getNumberOfPoliciesForAccount(Landroid/content/Context;J)I
    .locals 9
    .parameter "context"
    .parameter "accountId"

    .prologue
    const/4 v2, 0x0

    .line 3643
    const/4 v7, 0x0

    .line 3645
    .local v7, count:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "account_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3646
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 3647
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 3648
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3651
    :cond_0
    return v7
.end method

.method public static restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Policies;
    .locals 7
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 3661
    sget-object v0, Lcom/android/email/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 3662
    .local v1, u:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/email/provider/EmailContent$Policies;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3666
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3667
    const-class v0, Lcom/android/email/provider/EmailContent$Policies;

    invoke-static {v6, v0}, Lcom/android/email/provider/EmailContent$Policies;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/email/provider/EmailContent$Policies;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3672
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, p0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v3

    goto :goto_0

    .end local p0
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 3702
    const/4 v0, 0x0

    return v0
.end method

.method public restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Policies;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 3679
    sget-object v0, Lcom/android/email/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Policies;->mBaseUri:Landroid/net/Uri;

    .line 3680
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/provider/EmailContent$Policies;->mId:J

    .line 3681
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 3682
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 3683
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 3684
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/provider/EmailContent$Policies;->mAccountId:J

    .line 3685
    return-object p0
.end method

.method public bridge synthetic restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3612
    invoke-virtual {p0, p1}, Lcom/android/email/provider/EmailContent$Policies;->restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Policies;

    move-result-object v0

    return-object v0
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 3690
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3691
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "name"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3692
    const-string v1, "type"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3693
    const-string v1, "value"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3694
    const-string v1, "account_id"

    iget-wide v2, p0, Lcom/android/email/provider/EmailContent$Policies;->mAccountId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3695
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 3724
    iget-wide v0, p0, Lcom/android/email/provider/EmailContent$Policies;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3725
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3726
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3727
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3728
    iget-wide v0, p0, Lcom/android/email/provider/EmailContent$Policies;->mAccountId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3729
    return-void
.end method
