.class Lcom/android/exchange/provider/GalEmailAddressAdapter$MyMergeCursor;
.super Landroid/database/MergeCursor;
.source "GalEmailAddressAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/provider/GalEmailAddressAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyMergeCursor"
.end annotation


# instance fields
.field private mSeparatorPosition:I


# direct methods
.method public constructor <init>([Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursors"

    .prologue
    .line 383
    invoke-direct {p0, p1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 384
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter$MyMergeCursor;->mClosed:Z

    .line 385
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter$MyMergeCursor;->mSeparatorPosition:I

    .line 386
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 390
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/MergeCursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    monitor-exit p0

    return-void

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getSeparatorPosition()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter$MyMergeCursor;->mSeparatorPosition:I

    return v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    .prologue
    .line 398
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/MergeCursor;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setSeparatorPosition(I)V
    .locals 0
    .parameter "newPos"

    .prologue
    .line 402
    iput p1, p0, Lcom/android/exchange/provider/GalEmailAddressAdapter$MyMergeCursor;->mSeparatorPosition:I

    .line 403
    return-void
.end method
