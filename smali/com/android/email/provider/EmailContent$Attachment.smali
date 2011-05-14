.class public final Lcom/android/email/provider/EmailContent$Attachment;
.super Lcom/android/email/provider/EmailContent;
.source "EmailContent.java"

# interfaces
.implements Lcom/android/email/provider/EmailContent$AttachmentColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/EmailContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Attachment"
.end annotation


# static fields
.field public static final CONTENT_CONTENT_BYTES_COLUMN:I = 0xb

.field public static final CONTENT_CONTENT_COLUMN:I = 0x9

.field public static final CONTENT_CONTENT_ID_COLUMN:I = 0x4

.field public static final CONTENT_CONTENT_URI_COLUMN:I = 0x5

.field public static final CONTENT_ENCODING_COLUMN:I = 0x8

.field public static final CONTENT_FILENAME_COLUMN:I = 0x1

.field public static final CONTENT_FLAGS_COLUMN:I = 0xa

.field public static final CONTENT_ID_COLUMN:I = 0x0

.field public static final CONTENT_LOCATION_COLUMN:I = 0x7

.field public static final CONTENT_MESSAGE_ID_COLUMN:I = 0x6

.field public static final CONTENT_MIME_TYPE_COLUMN:I = 0x2

.field public static final CONTENT_PROJECTION:[Ljava/lang/String; = null

.field public static final CONTENT_SIZE_COLUMN:I = 0x3

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/email/provider/EmailContent$Attachment;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_ICS_ALTERNATIVE_PART:I = 0x1

.field public static final MESSAGE_ID_URI:Landroid/net/Uri; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "Attachment"


# instance fields
.field public mContent:Ljava/lang/String;

.field public mContentBytes:[B

.field public mContentId:Ljava/lang/String;

.field public mContentUri:Ljava/lang/String;

.field public mEncoding:Ljava/lang/String;

.field public mFileName:Ljava/lang/String;

.field public mFlags:I

.field public mLocation:Ljava/lang/String;

.field public mMessageKey:J

.field public mMimeType:Ljava/lang/String;

.field public mSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/email/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/attachment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    .line 2710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/email/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/attachment/message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/email/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    .line 2737
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "fileName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mimeType"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "size"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "contentId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "contentUri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "messageKey"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "location"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "encoding"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "content"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "content_bytes"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    .line 2931
    new-instance v0, Lcom/android/email/provider/EmailContent$Attachment$1;

    invoke-direct {v0}, Lcom/android/email/provider/EmailContent$Attachment$1;-><init>()V

    sput-object v0, Lcom/android/email/provider/EmailContent$Attachment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2753
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/provider/EmailContent;-><init>(Lcom/android/email/provider/EmailContent$1;)V

    .line 2754
    sget-object v0, Lcom/android/email/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Attachment;->mBaseUri:Landroid/net/Uri;

    .line 2755
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    .line 2909
    invoke-direct {p0, v3}, Lcom/android/email/provider/EmailContent;-><init>(Lcom/android/email/provider/EmailContent$1;)V

    .line 2910
    sget-object v1, Lcom/android/email/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Attachment;->mBaseUri:Landroid/net/Uri;

    .line 2911
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    .line 2912
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 2913
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 2914
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    .line 2915
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 2916
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 2917
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/email/provider/EmailContent$Attachment;->mMessageKey:J

    .line 2918
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    .line 2919
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    .line 2920
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Attachment;->mContent:Ljava/lang/String;

    .line 2921
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/email/provider/EmailContent$Attachment;->mFlags:I

    .line 2922
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2923
    .local v0, contentBytesLen:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2924
    iput-object v3, p0, Lcom/android/email/provider/EmailContent$Attachment;->mContentBytes:[B

    .line 2929
    :goto_0
    return-void

    .line 2926
    :cond_0
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/email/provider/EmailContent$Attachment;->mContentBytes:[B

    .line 2927
    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Attachment;->mContentBytes:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_0
.end method

.method public static createUniqueFile(Ljava/lang/String;)Ljava/io/File;
    .locals 10
    .parameter "filename"

    .prologue
    const/4 v9, 0x0

    .line 2808
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    const-string v8, "mounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2809
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 2810
    .local v0, directory:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2811
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v7, v2

    .line 2837
    .end local v0           #directory:Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    :goto_0
    return-object v7

    .line 2815
    .restart local v0       #directory:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    :cond_0
    const/16 v7, 0x2e

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 2816
    .local v4, index:I
    move-object v5, p0

    .line 2817
    .local v5, name:Ljava/lang/String;
    const-string v1, ""

    .line 2818
    .local v1, extension:Ljava/lang/String;
    const/4 v7, -0x1

    if-eq v4, v7, :cond_1

    .line 2819
    const/4 v7, 0x0

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 2820
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2822
    :cond_1
    const/4 v3, 0x2

    .local v3, i:I
    :goto_1
    const v7, 0x7fffffff

    if-ge v3, v7, :cond_3

    .line 2826
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 2827
    .local v6, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const/16 v8, 0x2d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2828
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2831
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    move-object v7, v2

    .line 2832
    goto :goto_0

    .line 2822
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v6           #sb:Ljava/lang/StringBuffer;
    :cond_3
    move-object v7, v9

    .line 2835
    goto :goto_0

    .end local v0           #directory:Ljava/io/File;
    .end local v1           #extension:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #i:I
    .end local v4           #index:I
    .end local v5           #name:Ljava/lang/String;
    :cond_4
    move-object v7, v9

    .line 2837
    goto :goto_0
.end method

.method public static restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Attachment;
    .locals 7
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 2764
    sget-object v0, Lcom/android/email/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2765
    .local v1, u:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/email/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2769
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2770
    const-class v0, Lcom/android/email/provider/EmailContent$Attachment;

    invoke-static {v6, v0}, Lcom/android/email/provider/EmailContent$Attachment;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/email/provider/EmailContent;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/email/provider/EmailContent$Attachment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2775
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

.method public static restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/email/provider/EmailContent$Attachment;
    .locals 10
    .parameter "context"
    .parameter "messageId"

    .prologue
    const/4 v3, 0x0

    .line 2784
    sget-object v0, Lcom/android/email/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2785
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/email/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2788
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 2789
    .local v8, count:I
    new-array v6, v8, [Lcom/android/email/provider/EmailContent$Attachment;

    .line 2790
    .local v6, attachments:[Lcom/android/email/provider/EmailContent$Attachment;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v8, :cond_0

    .line 2791
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 2792
    new-instance v0, Lcom/android/email/provider/EmailContent$Attachment;

    invoke-direct {v0}, Lcom/android/email/provider/EmailContent$Attachment;-><init>()V

    invoke-virtual {v0, v7}, Lcom/android/email/provider/EmailContent$Attachment;->restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v0

    aput-object v0, v6, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2790
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2796
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return-object v6

    .end local v6           #attachments:[Lcom/android/email/provider/EmailContent$Attachment;
    .end local v8           #count:I
    .end local v9           #i:I
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 2885
    const/4 v0, 0x0

    return v0
.end method

.method public restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Attachment;
    .locals 3
    .parameter "cursor"

    .prologue
    const-string v2, "EmailContent >>"

    .line 2843
    sget-object v0, Lcom/android/email/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Attachment;->mBaseUri:Landroid/net/Uri;

    .line 2844
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    .line 2845
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 2848
    const-string v0, "EmailContent >>"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restore || name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2849
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2850
    const-string v0, "EmailContent >>"

    const-string v0, "set default name +++++++++++++++++++++++++++++++++++++++++++++++++"

    invoke-static {v2, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2851
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 2854
    :cond_0
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 2855
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    .line 2856
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 2857
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 2858
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/provider/EmailContent$Attachment;->mMessageKey:J

    .line 2859
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    .line 2860
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    .line 2861
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Attachment;->mContent:Ljava/lang/String;

    .line 2862
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/email/provider/EmailContent$Attachment;->mFlags:I

    .line 2863
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/EmailContent$Attachment;->mContentBytes:[B

    .line 2864
    return-object p0
.end method

.method public bridge synthetic restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2706
    invoke-virtual {p0, p1}, Lcom/android/email/provider/EmailContent$Attachment;->restore(Landroid/database/Cursor;)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v0

    return-object v0
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 2869
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2870
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "fileName"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2871
    const-string v1, "mimeType"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2872
    const-string v1, "size"

    iget-wide v2, p0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2873
    const-string v1, "contentId"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2874
    const-string v1, "contentUri"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2875
    const-string v1, "messageKey"

    iget-wide v2, p0, Lcom/android/email/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2876
    const-string v1, "location"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2877
    const-string v1, "encoding"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2878
    const-string v1, "content"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Attachment;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2879
    const-string v1, "flags"

    iget v2, p0, Lcom/android/email/provider/EmailContent$Attachment;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2880
    const-string v1, "content_bytes"

    iget-object v2, p0, Lcom/android/email/provider/EmailContent$Attachment;->mContentBytes:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2881
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, ", "

    .line 2944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/email/provider/EmailContent$Attachment;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/provider/EmailContent$Attachment;->mContentBytes:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 2890
    iget-wide v0, p0, Lcom/android/email/provider/EmailContent$Attachment;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2891
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2892
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2893
    iget-wide v0, p0, Lcom/android/email/provider/EmailContent$Attachment;->mSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2894
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2895
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2896
    iget-wide v0, p0, Lcom/android/email/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2897
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2898
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2899
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Attachment;->mContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2900
    iget v0, p0, Lcom/android/email/provider/EmailContent$Attachment;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2901
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Attachment;->mContentBytes:[B

    if-nez v0, :cond_0

    .line 2902
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2907
    :goto_0
    return-void

    .line 2904
    :cond_0
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Attachment;->mContentBytes:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2905
    iget-object v0, p0, Lcom/android/email/provider/EmailContent$Attachment;->mContentBytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0
.end method
