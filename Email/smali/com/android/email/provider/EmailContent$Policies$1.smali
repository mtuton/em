.class Lcom/android/email/provider/EmailContent$Policies$1;
.super Ljava/lang/Object;
.source "EmailContent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/EmailContent$Policies;
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
        "Lcom/android/email/provider/EmailContent$Policies;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/email/provider/EmailContent$Policies;
    .locals 1
    .parameter "in"

    .prologue
    .line 3711
    new-instance v0, Lcom/android/email/provider/EmailContent$Policies;

    invoke-direct {v0, p1}, Lcom/android/email/provider/EmailContent$Policies;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3714
    invoke-virtual {p0, p1}, Lcom/android/email/provider/EmailContent$Policies$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/email/provider/EmailContent$Policies;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/email/provider/EmailContent$Policies;
    .locals 1
    .parameter "size"

    .prologue
    .line 3715
    new-array v0, p1, [Lcom/android/email/provider/EmailContent$Policies;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3714
    invoke-virtual {p0, p1}, Lcom/android/email/provider/EmailContent$Policies$1;->newArray(I)[Lcom/android/email/provider/EmailContent$Policies;

    move-result-object v0

    return-object v0
.end method
