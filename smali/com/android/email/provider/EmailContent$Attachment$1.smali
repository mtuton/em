.class Lcom/android/email/provider/EmailContent$Attachment$1;
.super Ljava/lang/Object;
.source "EmailContent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/EmailContent$Attachment;
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
        "Lcom/android/email/provider/EmailContent$Attachment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/email/provider/EmailContent$Attachment;
    .locals 1
    .parameter "in"

    .prologue
    .line 2934
    new-instance v0, Lcom/android/email/provider/EmailContent$Attachment;

    invoke-direct {v0, p1}, Lcom/android/email/provider/EmailContent$Attachment;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2937
    invoke-virtual {p0, p1}, Lcom/android/email/provider/EmailContent$Attachment$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/email/provider/EmailContent$Attachment;
    .locals 1
    .parameter "size"

    .prologue
    .line 2938
    new-array v0, p1, [Lcom/android/email/provider/EmailContent$Attachment;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2937
    invoke-virtual {p0, p1}, Lcom/android/email/provider/EmailContent$Attachment$1;->newArray(I)[Lcom/android/email/provider/EmailContent$Attachment;

    move-result-object v0

    return-object v0
.end method
