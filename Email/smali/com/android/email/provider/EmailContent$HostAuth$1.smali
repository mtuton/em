.class final Lcom/android/email/provider/EmailContent$HostAuth$1;
.super Ljava/lang/Object;
.source "EmailContent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/EmailContent$HostAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/email/provider/EmailContent$HostAuth;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 4229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/email/provider/EmailContent$HostAuth;
    .locals 1
    .parameter "in"

    .prologue
    .line 4231
    new-instance v0, Lcom/android/email/provider/EmailContent$HostAuth;

    invoke-direct {v0, p1}, Lcom/android/email/provider/EmailContent$HostAuth;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4229
    invoke-virtual {p0, p1}, Lcom/android/email/provider/EmailContent$HostAuth$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/email/provider/EmailContent$HostAuth;
    .locals 1
    .parameter "size"

    .prologue
    .line 4235
    new-array v0, p1, [Lcom/android/email/provider/EmailContent$HostAuth;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4229
    invoke-virtual {p0, p1}, Lcom/android/email/provider/EmailContent$HostAuth$1;->newArray(I)[Lcom/android/email/provider/EmailContent$HostAuth;

    move-result-object v0

    return-object v0
.end method
