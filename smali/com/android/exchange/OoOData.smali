.class public Lcom/android/exchange/OoOData;
.super Ljava/lang/Object;
.source "OoOData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/exchange/OoOData;",
            ">;"
        }
    .end annotation
.end field

.field private static final OOO_CONST_BASE:I = 0x0

.field public static final OOO_STATE_DISABLE:I = 0x0

.field public static final OOO_STATE_GLOBAL:I = 0x1

.field public static final OOO_STATE_TIME_BASED:I = 0x2

.field public static final OOO_TYPE_EXTERNAL_KNOWN:I = 0x5

.field public static final OOO_TYPE_EXTERNAL_UNKNOWN:I = 0x6

.field public static final OOO_TYPE_GENERIC:I = 0x3

.field public static final OOO_TYPE_INTERNAL:I = 0x4

.field private static final TAG:Ljava/lang/String; = "OoOData"


# instance fields
.field public enabled:I

.field public end:Ljava/util/Date;

.field public msg:Ljava/lang/String;

.field public start:Ljava/util/Date;

.field public state:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/android/exchange/OoOData$1;

    invoke-direct {v0}, Lcom/android/exchange/OoOData$1;-><init>()V

    sput-object v0, Lcom/android/exchange/OoOData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 1
    .parameter "atype"
    .parameter "astate"
    .parameter "aenabled"
    .parameter "amsg"

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Lcom/android/exchange/OoOData;->type:I

    .line 74
    iput p2, p0, Lcom/android/exchange/OoOData;->state:I

    .line 75
    iput p3, p0, Lcom/android/exchange/OoOData;->enabled:I

    .line 76
    iput-object p4, p0, Lcom/android/exchange/OoOData;->msg:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/android/exchange/OoOData;->start:Ljava/util/Date;

    .line 78
    iput-object v0, p0, Lcom/android/exchange/OoOData;->end:Ljava/util/Date;

    .line 80
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;JJ)V
    .locals 1
    .parameter "atype"
    .parameter "astate"
    .parameter "aenabled"
    .parameter "amsg"
    .parameter "astart"
    .parameter "aend"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lcom/android/exchange/OoOData;->type:I

    .line 63
    iput p2, p0, Lcom/android/exchange/OoOData;->state:I

    .line 64
    iput p3, p0, Lcom/android/exchange/OoOData;->enabled:I

    .line 65
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p5, p6}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/android/exchange/OoOData;->start:Ljava/util/Date;

    .line 66
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p7, p8}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/android/exchange/OoOData;->end:Ljava/util/Date;

    .line 67
    iput-object p4, p0, Lcom/android/exchange/OoOData;->msg:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0
    .parameter "atype"
    .parameter "astate"
    .parameter "aenabled"
    .parameter "amsg"
    .parameter "astart"
    .parameter "aend"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/android/exchange/OoOData;->type:I

    .line 52
    iput p2, p0, Lcom/android/exchange/OoOData;->state:I

    .line 53
    iput p3, p0, Lcom/android/exchange/OoOData;->enabled:I

    .line 55
    iput-object p5, p0, Lcom/android/exchange/OoOData;->start:Ljava/util/Date;

    .line 56
    iput-object p6, p0, Lcom/android/exchange/OoOData;->end:Ljava/util/Date;

    .line 57
    iput-object p4, p0, Lcom/android/exchange/OoOData;->msg:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/exchange/OoOData;->readFromParcel(Landroid/os/Parcel;)V

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/exchange/OoOData$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/android/exchange/OoOData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public getEnd()J
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/exchange/OoOData;->end:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/exchange/OoOData;->end:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 89
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getStart()J
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/exchange/OoOData;->start:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/exchange/OoOData;->start:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 84
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public isEndDST()Z
    .locals 2

    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/exchange/OoOData;->end:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 101
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 102
    .local v0, tz:Ljava/util/TimeZone;
    iget-object v1, p0, Lcom/android/exchange/OoOData;->end:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    .line 104
    .end local v0           #tz:Ljava/util/TimeZone;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isStartDST()Z
    .locals 2

    .prologue
    .line 93
    iget-object v1, p0, Lcom/android/exchange/OoOData;->start:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 94
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 95
    .local v0, tz:Ljava/util/TimeZone;
    iget-object v1, p0, Lcom/android/exchange/OoOData;->start:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    .line 97
    .end local v0           #tz:Ljava/util/TimeZone;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .parameter "in"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/exchange/OoOData;->type:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/exchange/OoOData;->state:I

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/exchange/OoOData;->enabled:I

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/OoOData;->msg:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 134
    .local v0, s:J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 135
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/android/exchange/OoOData;->start:Ljava/util/Date;

    .line 138
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 139
    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 140
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/android/exchange/OoOData;->end:Ljava/util/Date;

    .line 144
    :goto_1
    return-void

    .line 137
    :cond_0
    iput-object v3, p0, Lcom/android/exchange/OoOData;->start:Ljava/util/Date;

    goto :goto_0

    .line 142
    :cond_1
    iput-object v3, p0, Lcom/android/exchange/OoOData;->end:Ljava/util/Date;

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    const-wide/16 v2, 0x0

    .line 111
    iget v0, p0, Lcom/android/exchange/OoOData;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget v0, p0, Lcom/android/exchange/OoOData;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget v0, p0, Lcom/android/exchange/OoOData;->enabled:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-object v0, p0, Lcom/android/exchange/OoOData;->msg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/android/exchange/OoOData;->start:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/exchange/OoOData;->start:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 120
    :goto_0
    iget-object v0, p0, Lcom/android/exchange/OoOData;->end:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/exchange/OoOData;->end:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 124
    :goto_1
    return-void

    .line 118
    :cond_0
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_1
.end method
