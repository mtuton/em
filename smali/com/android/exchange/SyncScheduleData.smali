.class public Lcom/android/exchange/SyncScheduleData;
.super Ljava/lang/Object;
.source "SyncScheduleData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/exchange/SyncScheduleData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEndMinute:I

.field private mOffPeakSchedule:I

.field private mPeakDays:I

.field private mPeakSchedule:I

.field private mRoamingSchedule:I

.field private mStartMinute:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/android/exchange/SyncScheduleData$1;

    invoke-direct {v0}, Lcom/android/exchange/SyncScheduleData$1;-><init>()V

    sput-object v0, Lcom/android/exchange/SyncScheduleData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0
    .parameter "peakStartMinute"
    .parameter "peakEndMinute"
    .parameter "peakDays"
    .parameter "peakSchedule"
    .parameter "offPeakSchedule"
    .parameter "roamingSchedule"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/android/exchange/SyncScheduleData;->mStartMinute:I

    .line 31
    iput p2, p0, Lcom/android/exchange/SyncScheduleData;->mEndMinute:I

    .line 32
    iput p3, p0, Lcom/android/exchange/SyncScheduleData;->mPeakDays:I

    .line 33
    iput p4, p0, Lcom/android/exchange/SyncScheduleData;->mPeakSchedule:I

    .line 34
    iput p5, p0, Lcom/android/exchange/SyncScheduleData;->mOffPeakSchedule:I

    .line 35
    iput p6, p0, Lcom/android/exchange/SyncScheduleData;->mRoamingSchedule:I

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/exchange/SyncScheduleData;->mStartMinute:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/exchange/SyncScheduleData;->mEndMinute:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/exchange/SyncScheduleData;->mPeakDays:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/exchange/SyncScheduleData;->mPeakSchedule:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/exchange/SyncScheduleData;->mOffPeakSchedule:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/exchange/SyncScheduleData;->mRoamingSchedule:I

    .line 117
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public getEndMinute()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/android/exchange/SyncScheduleData;->mEndMinute:I

    return v0
.end method

.method public getOffPeakSchedule()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/exchange/SyncScheduleData;->mOffPeakSchedule:I

    return v0
.end method

.method public getPeakDay()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/android/exchange/SyncScheduleData;->mPeakDays:I

    return v0
.end method

.method public getPeakSchedule()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/android/exchange/SyncScheduleData;->mPeakSchedule:I

    return v0
.end method

.method public getRoamingSchedule()I
    .locals 4

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 82
    .local v1, requireManualSync:Z
    :try_start_0
    invoke-static {}, Lcom/android/email/SecurityPolicy;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 83
    .local v0, mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Lcom/android/email/SecurityPolicy;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/SecurityPolicy;->getAdminComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getRequireManualSyncRoaming(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 85
    if-eqz v1, :cond_0

    .line 86
    const/4 v2, 0x0

    .line 90
    .end local v0           #mDPM:Landroid/app/admin/DevicePolicyManager;
    :goto_0
    return v2

    .line 88
    :catch_0
    move-exception v2

    .line 90
    :cond_0
    iget v2, p0, Lcom/android/exchange/SyncScheduleData;->mRoamingSchedule:I

    goto :goto_0
.end method

.method public getStartMinute()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/android/exchange/SyncScheduleData;->mStartMinute:I

    return v0
.end method

.method public setEndMinute(I)V
    .locals 0
    .parameter "endMinute"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/exchange/SyncScheduleData;->mEndMinute:I

    .line 52
    return-void
.end method

.method public setOffPeakSchedule(I)V
    .locals 0
    .parameter "offPeakSchedule"

    .prologue
    .line 75
    iput p1, p0, Lcom/android/exchange/SyncScheduleData;->mOffPeakSchedule:I

    .line 76
    return-void
.end method

.method public setPeakDay(I)V
    .locals 0
    .parameter "peakDay"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/exchange/SyncScheduleData;->mPeakDays:I

    .line 60
    return-void
.end method

.method public setPeakSchedule(I)V
    .locals 0
    .parameter "peakSchedule"

    .prologue
    .line 67
    iput p1, p0, Lcom/android/exchange/SyncScheduleData;->mPeakSchedule:I

    .line 68
    return-void
.end method

.method public setRoamingSchedule(I)V
    .locals 0
    .parameter "roamingSchedule"

    .prologue
    .line 94
    iput p1, p0, Lcom/android/exchange/SyncScheduleData;->mRoamingSchedule:I

    .line 95
    return-void
.end method

.method public setStartMinute(I)V
    .locals 0
    .parameter "startMinute"

    .prologue
    .line 43
    iput p1, p0, Lcom/android/exchange/SyncScheduleData;->mStartMinute:I

    .line 44
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 102
    iget v0, p0, Lcom/android/exchange/SyncScheduleData;->mStartMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget v0, p0, Lcom/android/exchange/SyncScheduleData;->mEndMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget v0, p0, Lcom/android/exchange/SyncScheduleData;->mPeakDays:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget v0, p0, Lcom/android/exchange/SyncScheduleData;->mPeakSchedule:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget v0, p0, Lcom/android/exchange/SyncScheduleData;->mOffPeakSchedule:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget v0, p0, Lcom/android/exchange/SyncScheduleData;->mRoamingSchedule:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    return-void
.end method
