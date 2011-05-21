.class Lcom/android/exchange/provider/ExchangeProvider$MatrixCursorExtras;
.super Landroid/database/MatrixCursor;
.source "ExchangeProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/provider/ExchangeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MatrixCursorExtras"
.end annotation


# instance fields
.field private mExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .parameter "columnNames"

    .prologue
    .line 261
    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/provider/ExchangeProvider$MatrixCursorExtras;->mExtras:Landroid/os/Bundle;

    .line 263
    return-void
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/exchange/provider/ExchangeProvider$MatrixCursorExtras;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0
    .parameter "extras"

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/exchange/provider/ExchangeProvider$MatrixCursorExtras;->mExtras:Landroid/os/Bundle;

    .line 267
    return-void
.end method
