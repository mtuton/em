.class public Lcom/android/exchange/adapter/ContactsSyncAdapter;
.super Lcom/android/exchange/adapter/AbstractSyncAdapter;
.source "ContactsSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/ContactsSyncAdapter$1;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$PhoneRow;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$ImRow;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$EmailRow;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$EasChildren;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;
    }
.end annotation


# static fields
.field private static final CLIENT_ID_SELECTION:Ljava/lang/String; = "sync1=?"

.field private static final COMMON_DATA_ROW:Ljava/lang/String; = "data1"

.field private static final COMMON_TYPE_ROW:Ljava/lang/String; = "data2"

.field private static final EMAIL_TAGS:[I = null

.field private static final EMPTY_ARRAY_NAMEDCONTENTVALUES:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity$NamedContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private static final FOUND_DATA_ROW:Ljava/lang/String; = "com.android.exchange.FOUND_ROW"

.field private static final GROUP_PROJECTION:[Ljava/lang/String; = null

.field private static final HOME_ADDRESS_TAGS:[I = null

.field private static final HOME_PHONE_TAGS:[I = null

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field private static final IM_TAGS:[I = null

.field private static final MAX_EMAIL_ROWS:I = 0x3

.field private static final MAX_IM_ROWS:I = 0x3

.field private static final MAX_PHONE_ROWS:I = 0x2

.field private static final OTHER_ADDRESS_TAGS:[I = null

.field private static final SERVER_ID_SELECTION:Ljava/lang/String; = "sourceid=?"

.field private static final TAG:Ljava/lang/String; = "EasContactsSyncAdapter"

.field private static final WORK_ADDRESS_TAGS:[I

.field private static final WORK_PHONE_TAGS:[I

.field private static final sSyncKeyLock:Ljava/lang/Object;


# instance fields
.field mDeletedIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupsUsed:Z

.field mUpdatedIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x5

    .line 82
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->ID_PROJECTION:[Ljava/lang/String;

    .line 83
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "sourceid"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->GROUP_PROJECTION:[Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->EMPTY_ARRAY_NAMEDCONTENTVALUES:Ljava/util/ArrayList;

    .line 90
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->HOME_ADDRESS_TAGS:[I

    .line 96
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->WORK_ADDRESS_TAGS:[I

    .line 102
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->OTHER_ADDRESS_TAGS:[I

    .line 114
    new-array v0, v6, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->IM_TAGS:[I

    .line 117
    new-array v0, v6, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->EMAIL_TAGS:[I

    .line 120
    new-array v0, v5, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->WORK_PHONE_TAGS:[I

    .line 123
    new-array v0, v5, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->HOME_PHONE_TAGS:[I

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sSyncKeyLock:Ljava/lang/Object;

    return-void

    .line 90
    nop

    :array_0
    .array-data 0x4
        0x61t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
    .end array-data

    .line 96
    :array_1
    .array-data 0x4
        0x4dt 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0x4ft 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
    .end array-data

    .line 102
    :array_2
    .array-data 0x4
        0x61t 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x71t 0x0t 0x0t 0x0t
    .end array-data

    .line 114
    :array_3
    .array-data 0x4
        0x7t 0x3t 0x0t 0x0t
        0x8t 0x3t 0x0t 0x0t
        0x9t 0x3t 0x0t 0x0t
    .end array-data

    .line 117
    :array_4
    .array-data 0x4
        0x5bt 0x0t 0x0t 0x0t
        0x5ct 0x0t 0x0t 0x0t
        0x5dt 0x0t 0x0t 0x0t
    .end array-data

    .line 120
    :array_5
    .array-data 0x4
        0x53t 0x0t 0x0t 0x0t
        0x4ct 0x0t 0x0t 0x0t
    .end array-data

    .line 123
    :array_6
    .array-data 0x4
        0x67t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V
    .locals 1
    .parameter "mailbox"
    .parameter "service"

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/AbstractSyncAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mGroupsUsed:Z

    .line 135
    return-void
.end method

.method static synthetic access$100(Lcom/android/exchange/adapter/ContactsSyncAdapter;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/exchange/adapter/ContactsSyncAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mGroupsUsed:Z

    return p1
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->ID_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->EMPTY_ARRAY_NAMEDCONTENTVALUES:Ljava/util/ArrayList;

    return-object v0
.end method

.method static addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 138
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private sendBirthday(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 3
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v2, "data1"

    .line 1679
    const-string v0, "data1"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1680
    const/16 v0, 0x48

    const-string v1, "data1"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1682
    :cond_0
    return-void
.end method

.method private sendBusiness(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 5
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "data8"

    const-string v3, "data7"

    const-string v2, "data6"

    .line 1658
    const-string v0, "data8"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1659
    const/16 v0, 0x30c

    const-string v1, "data8"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1661
    :cond_0
    const-string v0, "data6"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1662
    const/16 v0, 0x305

    const-string v1, "data6"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1664
    :cond_1
    const-string v0, "data7"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1665
    const/16 v0, 0x306

    const-string v1, "data7"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1667
    :cond_2
    return-void
.end method

.method private sendChildren(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 5
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1741
    const/4 v0, 0x1

    .line 1742
    .local v0, first:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_2

    .line 1743
    sget-object v3, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasChildren;->ROWS:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 1744
    .local v2, row:Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1745
    if-eqz v0, :cond_0

    .line 1746
    const/16 v3, 0x57

    invoke-virtual {p1, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1747
    const/4 v0, 0x0

    .line 1749
    :cond_0
    const/16 v3, 0x58

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1742
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1752
    .end local v2           #row:Ljava/lang/String;
    :cond_2
    if-nez v0, :cond_3

    .line 1753
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1755
    :cond_3
    return-void
.end method

.method private sendEmail(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;ILjava/lang/String;)V
    .locals 5
    .parameter "s"
    .parameter "cv"
    .parameter "count"
    .parameter "displayName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1564
    const-string v3, "data1"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1565
    .local v0, addr:Ljava/lang/String;
    const-string v3, "data4"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1566
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1567
    if-eqz p4, :cond_2

    .line 1568
    move-object v1, p4

    .line 1574
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1575
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1576
    .local v2, value:Ljava/lang/String;
    const/4 v3, 0x3

    if-ge p3, v3, :cond_1

    .line 1577
    sget-object v3, Lcom/android/exchange/adapter/ContactsSyncAdapter;->EMAIL_TAGS:[I

    aget v3, v3, p3

    invoke-virtual {p1, v3, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1580
    .end local v2           #value:Ljava/lang/String;
    :cond_1
    return-void

    .line 1570
    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method private sendIm(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;I)V
    .locals 2
    .parameter "s"
    .parameter "cv"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1583
    const-string v1, "data1"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1584
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1588
    :cond_0
    :goto_0
    return-void

    .line 1585
    :cond_1
    const/4 v1, 0x3

    if-ge p3, v1, :cond_0

    .line 1586
    sget-object v1, Lcom/android/exchange/adapter/ContactsSyncAdapter;->IM_TAGS:[I

    aget v1, v1, p3

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0
.end method

.method private sendNickname(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 3
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v2, "data1"

    .line 1711
    const-string v0, "data1"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1712
    const/16 v0, 0x30d

    const-string v1, "data1"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1714
    :cond_0
    return-void
.end method

.method private sendNote(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 5
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v2, "data1"

    .line 1725
    const-string v0, ""

    .line 1726
    .local v0, note:Ljava/lang/String;
    const-string v1, "data1"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1728
    const-string v1, "data1"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, "\r\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1731
    :cond_0
    iget-object v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v1, v1, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, 0x4028

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_1

    .line 1732
    const/16 v1, 0x44a

    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1733
    const/16 v1, 0x446

    const-string v2, "1"

    invoke-virtual {p1, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x44b

    invoke-virtual {v1, v2, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1734
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1738
    :goto_0
    return-void

    .line 1736
    :cond_1
    const/16 v1, 0x49

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0
.end method

.method private sendOnePostal(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;[I)V
    .locals 7
    .parameter "s"
    .parameter "cv"
    .parameter "fieldNames"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v6, "data9"

    const-string v5, "data8"

    const-string v4, "data7"

    const-string v3, "data4"

    const-string v2, "data10"

    .line 1592
    const-string v0, "data7"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1593
    const/4 v0, 0x0

    aget v0, p3, v0

    const-string v1, "data7"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1595
    :cond_0
    const-string v0, "data10"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1596
    const/4 v0, 0x1

    aget v0, p3, v0

    const-string v1, "data10"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1598
    :cond_1
    const-string v0, "data9"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1599
    const/4 v0, 0x2

    aget v0, p3, v0

    const-string v1, "data9"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1601
    :cond_2
    const-string v0, "data8"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1602
    const/4 v0, 0x3

    aget v0, p3, v0

    const-string v1, "data8"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1604
    :cond_3
    const-string v0, "data4"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1605
    const/4 v0, 0x4

    aget v0, p3, v0

    const-string v1, "data4"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1607
    :cond_4
    return-void
.end method

.method private sendOrganization(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 6
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v5, "data9"

    const-string v4, "data5"

    const-string v3, "data4"

    const-string v2, "data1"

    .line 1696
    const-string v0, "data4"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1697
    const/16 v0, 0x68

    const-string v1, "data4"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1699
    :cond_0
    const-string v0, "data1"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1700
    const/16 v0, 0x59

    const-string v1, "data1"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1702
    :cond_1
    const-string v0, "data5"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1703
    const/16 v0, 0x5a

    const-string v1, "data5"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1705
    :cond_2
    const-string v0, "data9"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1706
    const/16 v0, 0x6c

    const-string v1, "data9"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1708
    :cond_3
    return-void
.end method

.method private sendPersonal(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 4
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v3, "data4"

    const-string v2, "data2"

    .line 1670
    const-string v0, "data2"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1671
    const/16 v0, 0x45

    const-string v1, "data2"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1673
    :cond_0
    const-string v0, "data4"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1674
    const/16 v0, 0x5e

    const-string v1, "data4"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1676
    :cond_1
    return-void
.end method

.method private sendPhone(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;II)V
    .locals 3
    .parameter "s"
    .parameter "cv"
    .parameter "workCount"
    .parameter "homeCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 1759
    const-string v1, "data1"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1760
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1802
    :cond_0
    :goto_0
    return-void

    .line 1761
    :cond_1
    const-string v1, "data2"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1780
    :pswitch_1
    if-ge p4, v2, :cond_0

    .line 1781
    sget-object v1, Lcom/android/exchange/adapter/ContactsSyncAdapter;->HOME_PHONE_TAGS:[I

    aget v1, v1, p4

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1763
    :pswitch_2
    if-ge p3, v2, :cond_0

    .line 1764
    sget-object v1, Lcom/android/exchange/adapter/ContactsSyncAdapter;->WORK_PHONE_TAGS:[I

    aget v1, v1, p3

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1768
    :pswitch_3
    const/16 v1, 0x30e

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1771
    :pswitch_4
    const/16 v1, 0x47

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1774
    :pswitch_5
    const/16 v1, 0x52

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1777
    :pswitch_6
    const/16 v1, 0x30b

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1785
    :pswitch_7
    const/16 v1, 0x6b

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1788
    :pswitch_8
    const/16 v1, 0x54

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1791
    :pswitch_9
    const/16 v1, 0x72

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1794
    :pswitch_a
    const/16 v1, 0x73

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1797
    :pswitch_b
    const/16 v1, 0x66

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1761
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_5
        :pswitch_b
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private sendPhoto(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 5
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x7c

    const-string v4, "data15"

    .line 1685
    const-string v2, "data15"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1686
    const-string v2, "data15"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 1687
    .local v0, bytes:[B
    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 1688
    .local v1, pic:Ljava/lang/String;
    invoke-virtual {p1, v3, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1693
    .end local v0           #bytes:[B
    .end local v1           #pic:Ljava/lang/String;
    :goto_0
    return-void

    .line 1691
    :cond_0
    invoke-virtual {p1, v3}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0
.end method

.method private sendRelation(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 2
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1805
    const-string v1, "data1"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1806
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1820
    :goto_0
    return-void

    .line 1807
    :cond_0
    const-string v1, "data2"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 1809
    :sswitch_0
    const/16 v1, 0x46

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1812
    :sswitch_1
    const/16 v1, 0x30a

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1815
    :sswitch_2
    const/16 v1, 0x74

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1807
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_1
        0xe -> :sswitch_2
    .end sparse-switch
.end method

.method private sendStructuredName(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 8
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v7, "data5"

    const-string v6, "data4"

    const-string v5, "data3"

    const-string v4, "data2"

    const-string v3, "data1"

    .line 1626
    const/4 v0, 0x0

    .line 1627
    .local v0, displayName:Ljava/lang/String;
    const-string v1, "data3"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1628
    const/16 v1, 0x69

    const-string v2, "data3"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1630
    :cond_0
    const-string v1, "data2"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1631
    const/16 v1, 0x5f

    const-string v2, "data2"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1633
    :cond_1
    const-string v1, "data5"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1634
    const/16 v1, 0x6a

    const-string v2, "data5"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1636
    :cond_2
    const-string v1, "data6"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1637
    const/16 v1, 0x75

    const-string v2, "data6"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1639
    :cond_3
    const-string v1, "data7"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1640
    const/16 v1, 0x79

    const-string v2, "data7"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1643
    :cond_4
    const-string v1, "data9"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1644
    const/16 v1, 0x7a

    const-string v2, "data9"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1647
    :cond_5
    const-string v1, "data4"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1648
    const/16 v1, 0x76

    const-string v2, "data4"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1650
    :cond_6
    const-string v1, "data1"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1651
    const-string v1, "data1"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1652
    const/16 v1, 0x5e

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1654
    :cond_7
    return-object v0
.end method

.method private sendStructuredPostal(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 1
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1610
    const-string v0, "data2"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1623
    :goto_0
    return-void

    .line 1612
    :pswitch_0
    sget-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->HOME_ADDRESS_TAGS:[I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendOnePostal(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;[I)V

    goto :goto_0

    .line 1615
    :pswitch_1
    sget-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->WORK_ADDRESS_TAGS:[I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendOnePostal(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;[I)V

    goto :goto_0

    .line 1618
    :pswitch_2
    sget-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->OTHER_ADDRESS_TAGS:[I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendOnePostal(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;[I)V

    goto :goto_0

    .line 1610
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendWebpage(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 3
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v2, "data1"

    .line 1717
    const-string v0, "data1"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1718
    const/16 v0, 0x77

    const-string v1, "data1"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1720
    :cond_0
    return-void
.end method

.method private uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 931
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    const-string v2, "com.android.exchange"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cleanup()V
    .locals 13

    .prologue
    .line 1506
    new-instance v9, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    const/4 v2, 0x0

    invoke-direct {v9, p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Lcom/android/exchange/adapter/ContactsSyncAdapter$1;)V

    .line 1507
    .local v9, ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;
    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 1508
    .local v8, id:Ljava/lang/Long;
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "caller_is_syncadapter"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "dirty"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0

    .line 1515
    .end local v8           #id:Ljava/lang/Long;
    :cond_0
    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 1516
    .restart local v8       #id:Ljava/lang/Long;
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "caller_is_syncadapter"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_1

    .line 1523
    .end local v8           #id:Ljava/lang/Long;
    :cond_1
    invoke-virtual {v9}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->execute()V

    .line 1524
    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1525
    .local v0, cr:Landroid/content/ContentResolver;
    iget-boolean v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mGroupsUsed:Z

    if-eqz v2, :cond_3

    .line 1530
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 1531
    .local v1, groupsUri:Landroid/net/Uri;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "sourceid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "title"

    aput-object v4, v2, v3

    const-string v3, "title IS NULL"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1533
    .local v6, c:Landroid/database/Cursor;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1534
    .local v12, values:Landroid/content/ContentValues;
    const-string v2, "group_visible"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1536
    :goto_2
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1537
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1538
    .local v11, sourceId:Ljava/lang/String;
    const-string v2, "title"

    invoke-virtual {v12, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 1545
    .local v10, sb:Ljava/lang/StringBuffer;
    const-string v2, "sourceid"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1546
    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    invoke-virtual {v0, v2, v12, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1551
    .end local v10           #sb:Ljava/lang/StringBuffer;
    .end local v11           #sourceId:Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1554
    .end local v1           #groupsUri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_3
    return-void
.end method

.method public dataUriFromNamedContentValues(Landroid/content/Entity$NamedContentValues;)Landroid/net/Uri;
    .locals 5
    .parameter "ncv"

    .prologue
    .line 1497
    iget-object v3, p1, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1498
    .local v1, id:J
    iget-object v3, p1, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1499
    .local v0, dataUri:Landroid/net/Uri;
    return-object v0
.end method

.method public getCollectionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1558
    const-string v0, "Contacts"

    return-object v0
.end method

.method public getSyncKey()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v7, "0"

    .line 166
    sget-object v4, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sSyncKeyLock:Ljava/lang/Object;

    monitor-enter v4

    .line 167
    :try_start_0
    iget-object v5, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v5, v5, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 170
    .local v0, client:Landroid/content/ContentProviderClient;
    :try_start_1
    sget-object v5, Landroid/provider/ContactsContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    invoke-static {v0, v5, v6}, Landroid/provider/SyncStateContract$Helpers;->get(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;)[B

    move-result-object v2

    .line 172
    .local v2, data:[B
    if-eqz v2, :cond_0

    array-length v5, v2

    if-nez v5, :cond_1

    .line 174
    :cond_0
    const-string v5, "0"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->setSyncKey(Ljava/lang/String;Z)V

    .line 176
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 177
    .local v1, cv:Landroid/content/ContentValues;
    const-string v5, "account_name"

    iget-object v6, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v6, v6, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v5, "account_type"

    const-string v6, "com.android.exchange"

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v5, "ungrouped_visible"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 181
    sget-object v5, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 182
    const-string v5, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v7

    .line 184
    .end local v1           #cv:Landroid/content/ContentValues;
    :goto_0
    return-object v4

    :cond_1
    :try_start_3
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    monitor-exit v4

    move-object v4, v5

    goto :goto_0

    .line 186
    .end local v2           #data:[B
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 187
    .local v3, e:Landroid/os/RemoteException;
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Can\'t get SyncKey from ContactsProvider"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 189
    .end local v0           #client:Landroid/content/ContentProviderClient;
    .end local v3           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5
.end method

.method public isSyncable()Z
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    const-string v1, "com.android.contacts"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/ContactsSyncAdapter;)V

    .line 152
    .local v0, p:Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;->parse()Z

    move-result v1

    return v1
.end method

.method public sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .locals 39
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    move-object v7, v0

    iget-object v5, v7, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1826
    .local v5, cr:Landroid/content/ContentResolver;
    sget-object v7, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "account_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    move-object v9, v0

    iget-object v9, v9, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "account_type"

    const-string v9, "com.android.exchange"

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "caller_is_syncadapter"

    const-string v9, "true"

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 1833
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1834
    const/4 v7, 0x0

    .line 1971
    .end local v6           #uri:Landroid/net/Uri;
    :goto_0
    return v7

    .line 1838
    .restart local v6       #uri:Landroid/net/Uri;
    :cond_0
    const/4 v7, 0x0

    const-string v8, "dirty=1"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-static {v7}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v18

    .line 1840
    .local v18, ei:Landroid/content/EntityIterator;
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1842
    .local v14, cidValues:Landroid/content/ContentValues;
    const/16 v25, 0x1

    .line 1843
    .local v25, first:Z
    :try_start_0
    sget-object v7, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v35

    .line 1844
    .end local v6           #uri:Landroid/net/Uri;
    .local v35, rawContactUri:Landroid/net/Uri;
    :goto_1
    invoke-interface/range {v18 .. v18}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 1845
    invoke-interface/range {v18 .. v18}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/Entity;

    .line 1847
    .local v22, entity:Landroid/content/Entity;
    invoke-virtual/range {v22 .. v22}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v23

    .line 1848
    .local v23, entityValues:Landroid/content/ContentValues;
    const-string v7, "sourceid"

    move-object/from16 v0, v23

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1849
    .local v36, serverId:Ljava/lang/String;
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 1850
    .local v27, groupIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v25, :cond_1

    .line 1851
    const/16 v7, 0x16

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1852
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "Sending Contacts changes to the server"

    aput-object v9, v7, v8

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1853
    const/16 v25, 0x0

    .line 1855
    :cond_1
    if-nez v36, :cond_2

    .line 1857
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "new_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    move-object v8, v0

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5f

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1858
    .local v15, clientId:Ljava/lang/String;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "Creating new contact with clientId: "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v15, v7, v8

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1859
    const/4 v7, 0x7

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v7

    const/16 v8, 0xc

    invoke-virtual {v7, v8, v15}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1861
    const-string v7, "sync1"

    invoke-virtual {v14, v7, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    const-string v7, "_id"

    move-object/from16 v0, v23

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v0, v35

    move-wide v1, v7

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v14, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1876
    .end local v15           #clientId:Ljava/lang/String;
    :goto_2
    const/16 v7, 0x1d

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1878
    const/16 v31, 0x0

    .line 1879
    .local v31, imCount:I
    const/16 v19, 0x0

    .line 1880
    .local v19, emailCount:I
    const/16 v28, 0x0

    .line 1881
    .local v28, homePhoneCount:I
    const/16 v38, 0x0

    .line 1882
    .local v38, workPhoneCount:I
    const/16 v17, 0x0

    .line 1883
    .local v17, displayName:Ljava/lang/String;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1884
    .local v21, emailValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual/range {v22 .. v22}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, i$:Ljava/util/Iterator;
    move/from16 v32, v31

    .end local v31           #imCount:I
    .local v32, imCount:I
    :goto_3
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/Entity$NamedContentValues;

    .line 1885
    .local v34, ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v16, v0

    .line 1886
    .local v16, cv:Landroid/content/ContentValues;
    const-string v7, "mimetype"

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1887
    .local v33, mimeType:Ljava/lang/String;
    const-string v7, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v33

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1888
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v31, v32

    .end local v32           #imCount:I
    .restart local v31       #imCount:I
    :goto_4
    move/from16 v32, v31

    .line 1929
    .end local v31           #imCount:I
    .restart local v32       #imCount:I
    goto :goto_3

    .line 1867
    .end local v16           #cv:Landroid/content/ContentValues;
    .end local v17           #displayName:Ljava/lang/String;
    .end local v19           #emailCount:I
    .end local v21           #emailValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v28           #homePhoneCount:I
    .end local v29           #i$:Ljava/util/Iterator;
    .end local v32           #imCount:I
    .end local v33           #mimeType:Ljava/lang/String;
    .end local v34           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v38           #workPhoneCount:I
    :cond_2
    const-string v7, "deleted"

    move-object/from16 v0, v23

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 1868
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "Deleting contact with serverId: "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v36, v7, v8

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1869
    const/16 v7, 0x9

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v7

    const/16 v8, 0xd

    move-object v0, v7

    move v1, v8

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    move-object v7, v0

    const-string v8, "_id"

    move-object/from16 v0, v23

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 1968
    .end local v22           #entity:Landroid/content/Entity;
    .end local v23           #entityValues:Landroid/content/ContentValues;
    .end local v27           #groupIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v35           #rawContactUri:Landroid/net/Uri;
    .end local v36           #serverId:Ljava/lang/String;
    :catchall_0
    move-exception v7

    invoke-interface/range {v18 .. v18}, Landroid/content/EntityIterator;->close()V

    throw v7

    .line 1873
    .restart local v22       #entity:Landroid/content/Entity;
    .restart local v23       #entityValues:Landroid/content/ContentValues;
    .restart local v27       #groupIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v35       #rawContactUri:Landroid/net/Uri;
    .restart local v36       #serverId:Ljava/lang/String;
    :cond_3
    const/4 v7, 0x1

    :try_start_1
    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Upsync change to contact with serverId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1874
    const/16 v7, 0x8

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v7

    const/16 v8, 0xd

    move-object v0, v7

    move v1, v8

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_2

    .line 1889
    .restart local v16       #cv:Landroid/content/ContentValues;
    .restart local v17       #displayName:Ljava/lang/String;
    .restart local v19       #emailCount:I
    .restart local v21       #emailValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v28       #homePhoneCount:I
    .restart local v29       #i$:Ljava/util/Iterator;
    .restart local v32       #imCount:I
    .restart local v33       #mimeType:Ljava/lang/String;
    .restart local v34       #ncv:Landroid/content/Entity$NamedContentValues;
    .restart local v38       #workPhoneCount:I
    :cond_4
    const-string v7, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v33

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1890
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendNickname(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v31, v32

    .end local v32           #imCount:I
    .restart local v31       #imCount:I
    goto/16 :goto_4

    .line 1891
    .end local v31           #imCount:I
    .restart local v32       #imCount:I
    :cond_5
    const-string v7, "vnd.android.cursor.item/eas_children"

    move-object/from16 v0, v33

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1892
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendChildren(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v31, v32

    .end local v32           #imCount:I
    .restart local v31       #imCount:I
    goto/16 :goto_4

    .line 1893
    .end local v31           #imCount:I
    .restart local v32       #imCount:I
    :cond_6
    const-string v7, "vnd.android.cursor.item/eas_business"

    move-object/from16 v0, v33

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1894
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendBusiness(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v31, v32

    .end local v32           #imCount:I
    .restart local v31       #imCount:I
    goto/16 :goto_4

    .line 1895
    .end local v31           #imCount:I
    .restart local v32       #imCount:I
    :cond_7
    const-string v7, "vnd.android.cursor.item/website"

    move-object/from16 v0, v33

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1896
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendWebpage(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v31, v32

    .end local v32           #imCount:I
    .restart local v31       #imCount:I
    goto/16 :goto_4

    .line 1897
    .end local v31           #imCount:I
    .restart local v32       #imCount:I
    :cond_8
    const-string v7, "vnd.android.cursor.item/eas_personal"

    move-object/from16 v0, v33

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1898
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendPersonal(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v31, v32

    .end local v32           #imCount:I
    .restart local v31       #imCount:I
    goto/16 :goto_4

    .line 1899
    .end local v31           #imCount:I
    .restart local v32       #imCount:I
    :cond_9
    const-string v7, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v33

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1900
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move/from16 v3, v38

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendPhone(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;II)V

    .line 1901
    const-string v7, "data2"

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v37

    .line 1902
    .local v37, type:I
    const/4 v7, 0x1

    move/from16 v0, v37

    move v1, v7

    if-ne v0, v1, :cond_a

    add-int/lit8 v28, v28, 0x1

    .line 1903
    :cond_a
    const/4 v7, 0x3

    move/from16 v0, v37

    move v1, v7

    if-ne v0, v1, :cond_b

    add-int/lit8 v38, v38, 0x1

    :cond_b
    move/from16 v31, v32

    .line 1904
    .end local v32           #imCount:I
    .restart local v31       #imCount:I
    goto/16 :goto_4

    .end local v31           #imCount:I
    .end local v37           #type:I
    .restart local v32       #imCount:I
    :cond_c
    const-string v7, "vnd.android.cursor.item/relation"

    move-object/from16 v0, v33

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1905
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendRelation(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v31, v32

    .end local v32           #imCount:I
    .restart local v31       #imCount:I
    goto/16 :goto_4

    .line 1906
    .end local v31           #imCount:I
    .restart local v32       #imCount:I
    :cond_d
    const-string v7, "vnd.android.cursor.item/name"

    move-object/from16 v0, v33

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1907
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStructuredName(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v17

    move/from16 v31, v32

    .end local v32           #imCount:I
    .restart local v31       #imCount:I
    goto/16 :goto_4

    .line 1908
    .end local v31           #imCount:I
    .restart local v32       #imCount:I
    :cond_e
    const-string v7, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v33

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1909
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStructuredPostal(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v31, v32

    .end local v32           #imCount:I
    .restart local v31       #imCount:I
    goto/16 :goto_4

    .line 1910
    .end local v31           #imCount:I
    .restart local v32       #imCount:I
    :cond_f
    const-string v7, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v33

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1911
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendOrganization(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v31, v32

    .end local v32           #imCount:I
    .restart local v31       #imCount:I
    goto/16 :goto_4

    .line 1912
    .end local v31           #imCount:I
    .restart local v32       #imCount:I
    :cond_10
    const-string v7, "vnd.android.cursor.item/im"

    move-object/from16 v0, v33

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1913
    add-int/lit8 v31, v32, 0x1

    .end local v32           #imCount:I
    .restart local v31       #imCount:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendIm(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;I)V

    goto/16 :goto_4

    .line 1914
    .end local v31           #imCount:I
    .restart local v32       #imCount:I
    :cond_11
    const-string v7, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v33

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1915
    const-string v7, "data2"

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    .line 1916
    .local v24, eventType:Ljava/lang/Integer;
    if-eqz v24, :cond_12

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v24

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1917
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendBirthday(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    :cond_12
    move/from16 v31, v32

    .line 1919
    .end local v32           #imCount:I
    .restart local v31       #imCount:I
    goto/16 :goto_4

    .end local v24           #eventType:Ljava/lang/Integer;
    .end local v31           #imCount:I
    .restart local v32       #imCount:I
    :cond_13
    const-string v7, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v33

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 1921
    const-string v7, "data1"

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v27

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v31, v32

    .end local v32           #imCount:I
    .restart local v31       #imCount:I
    goto/16 :goto_4

    .line 1922
    .end local v31           #imCount:I
    .restart local v32       #imCount:I
    :cond_14
    const-string v7, "vnd.android.cursor.item/note"

    move-object/from16 v0, v33

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1923
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendNote(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v31, v32

    .end local v32           #imCount:I
    .restart local v31       #imCount:I
    goto/16 :goto_4

    .line 1924
    .end local v31           #imCount:I
    .restart local v32       #imCount:I
    :cond_15
    const-string v7, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v33

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 1925
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendPhoto(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v31, v32

    .end local v32           #imCount:I
    .restart local v31       #imCount:I
    goto/16 :goto_4

    .line 1927
    .end local v31           #imCount:I
    .restart local v32       #imCount:I
    :cond_16
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "Contacts upsync, unknown data: "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v33, v7, v8

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->userLog([Ljava/lang/String;)V

    move/from16 v31, v32

    .end local v32           #imCount:I
    .restart local v31       #imCount:I
    goto/16 :goto_4

    .line 1933
    .end local v16           #cv:Landroid/content/ContentValues;
    .end local v31           #imCount:I
    .end local v33           #mimeType:Ljava/lang/String;
    .end local v34           #ncv:Landroid/content/Entity$NamedContentValues;
    .restart local v32       #imCount:I
    :cond_17
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v29

    move/from16 v20, v19

    .end local v19           #emailCount:I
    .local v20, emailCount:I
    :goto_5
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/ContentValues;

    .line 1934
    .restart local v16       #cv:Landroid/content/ContentValues;
    add-int/lit8 v19, v20, 0x1

    .end local v20           #emailCount:I
    .restart local v19       #emailCount:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move/from16 v3, v20

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendEmail(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;ILjava/lang/String;)V

    move/from16 v20, v19

    .end local v19           #emailCount:I
    .restart local v20       #emailCount:I
    goto :goto_5

    .line 1938
    .end local v16           #cv:Landroid/content/ContentValues;
    :cond_18
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1c

    .line 1939
    const/16 v26, 0x1

    .line 1940
    .local v26, groupFirst:Z
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_6
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v30

    .line 1942
    .local v30, id:I
    sget-object v7, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide v8, v0

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    sget-object v9, Lcom/android/exchange/adapter/ContactsSyncAdapter;->GROUP_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v5

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    .line 1946
    .local v13, c:Landroid/database/Cursor;
    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 1947
    if-eqz v26, :cond_19

    .line 1948
    const/16 v7, 0x55

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1949
    const/16 v26, 0x0

    .line 1951
    :cond_19
    const/16 v7, 0x56

    const/4 v8, 0x0

    invoke-interface {v13, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    move v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1954
    :cond_1a
    :try_start_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_1
    move-exception v7

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v7

    .line 1957
    .end local v13           #c:Landroid/database/Cursor;
    .end local v30           #id:I
    :cond_1b
    if-nez v26, :cond_1c

    .line 1958
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1961
    .end local v26           #groupFirst:Z
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    move-object v7, v0

    const-string v8, "_id"

    move-object/from16 v0, v23

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1964
    .end local v17           #displayName:Ljava/lang/String;
    .end local v20           #emailCount:I
    .end local v21           #emailValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v22           #entity:Landroid/content/Entity;
    .end local v23           #entityValues:Landroid/content/ContentValues;
    .end local v27           #groupIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v28           #homePhoneCount:I
    .end local v29           #i$:Ljava/util/Iterator;
    .end local v32           #imCount:I
    .end local v36           #serverId:Ljava/lang/String;
    .end local v38           #workPhoneCount:I
    :cond_1d
    if-nez v25, :cond_1e

    .line 1965
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1968
    :cond_1e
    invoke-interface/range {v18 .. v18}, Landroid/content/EntityIterator;->close()V

    .line 1971
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public setSyncKey(Ljava/lang/String;Z)V
    .locals 6
    .parameter "syncKey"
    .parameter "inCommands"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    sget-object v2, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sSyncKeyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 199
    :try_start_0
    const-string v3, "0"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p2, :cond_1

    .line 200
    :cond_0
    iget-object v3, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v3, v3, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 203
    .local v0, client:Landroid/content/ContentProviderClient;
    :try_start_1
    sget-object v3, Landroid/provider/ContactsContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v0, v3, v4, v5}, Landroid/provider/SyncStateContract$Helpers;->set(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;[B)V

    .line 205
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "SyncKey set to "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string v5, " in ContactsProvider"

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->userLog([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 210
    .end local v0           #client:Landroid/content/ContentProviderClient;
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iput-object p1, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    .line 211
    monitor-exit v2

    .line 212
    return-void

    .line 206
    .restart local v0       #client:Landroid/content/ContentProviderClient;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 207
    .local v1, e:Landroid/os/RemoteException;
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Can\'t set SyncKey in ContactsProvider"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 211
    .end local v0           #client:Landroid/content/ContentProviderClient;
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method
